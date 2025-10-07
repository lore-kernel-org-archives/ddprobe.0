Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C11238D49
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759867194; cv=none; b=oBlFn+L6C8CYE3HMcTBcMVggK1VAmoMvAhEClU5zyjRLVQrO1mWnYgMPjP/JPJflh16epQ+8rCTYUo4Vfv2TLvzi6V70pHaDvBLap53jW/T7DuBYADk1yHxHC0rNGpFXywR4k2NUe2C0sz75D2lk1/4anKwhN4VjVC0bUFrElJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759867194; c=relaxed/simple;
	bh=nq1j9fMGDMgzeBbHH08Yid96JQzQki9pc0ZhtlrIxwQ=;
	h=To:Subject:From:Message-Id:Date; b=oPgyx4vORS5IckTXcMg4EUyEjrnbCYuwM45+yjniVHqVpBr7+v/VhDCUikFNvGr3qS0pZqY/sz4D+JqOIUVVqGQwTmCd4z14K0AodTo+vaYOIu+4MSLGWMYPFnuYM65cMYeuldOQYrfFv6r/z0HFBRwwQMnsWneyvJZSoglwN4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNHVJV4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNHVJV4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FFC113D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759867193;
	bh=nq1j9fMGDMgzeBbHH08Yid96JQzQki9pc0ZhtlrIxwQ=;
	h=To:Subject:From:Date:From;
	b=KNHVJV4OiPtSWqIGMjCwRiuRjNz4nJdQs5VCJ/89BNGVsH0CApe+Hi/NkXRZsGwBE
	 ydgWuHBteEBLT106DAQyfBhyXQP44CB1g80Aey0EWjL5X5oAxh42uk1J/DEHiwzaEh
	 vRXXoH/UO1YK8EU0W4n7IKTyoJplExTkkjgkp3TaDTGTx6KRmBjtsgTmkigZj/6LIv
	 amTpJR9xT8B4Of17xeloypDPlH3ZdYQaT6GDv6sI3bwZdMJpEzOJ6oPw7TmFvfJ1L1
	 RG6Mzg3HNz1Wwrjj91axyCN/MouzP+L/57BFPnlIV5fbCPfo9z1Hi1v1+A5Oot4mAc
	 P1Ib/dMLv5F9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030DCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986719358.18623.586244333910495199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc861d693eeeae81ef4ebb4fa8bcc49e0d024390661a117bc6472c17818c8663
Date: Tue, 07 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759867193
