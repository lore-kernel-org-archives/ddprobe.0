Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087EC328B6D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767788634; cv=none; b=Jc87syptiG3zXp75z1bH19qES71lKXMtOFuTHdTV2hcuSHYtQ8FAybdEyWg9VqykU93g+NP8602lIWEfexQAXFYhIy2AlXJ1R0Xwqs6Ivd15UBxZ7edinZFESWQ8yRJMjKY78eUu8YgXHA+sXNlM+ixy2TCbDY6K8aWJuBfRrRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767788634; c=relaxed/simple;
	bh=rvJKqRVl4p4ZpT3UzfRHw6z8XBViI+d+VXcAbOJEiUY=;
	h=To:Subject:From:Message-Id:Date; b=ivaeASUQVjGQN89h/Fpt4BE4XzH/uQ1zU56PohY0u34IeXwcw5XyK/VoPV5SoMfL5fB0QHDaaU21ogdEzpX3fVGC6SFMdjp3la/fXBX0S62bmCvKkVvq9aIlQ0MvauTpY+u5brhVLLuM+T+9pqwYqemfz7h2HwIUlludqPnQFXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTSnelxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTSnelxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE67C19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767788633;
	bh=rvJKqRVl4p4ZpT3UzfRHw6z8XBViI+d+VXcAbOJEiUY=;
	h=To:Subject:From:Date:From;
	b=QTSnelxpjd4DDoAbvKg94q3yyZ4HZZY5Q6vGjPf6RBOON0ZKWAU3F2cxoUYTMlb/l
	 D0P6eFME0/o/13Ug4ZI6h2IKexy8mE0ao5MbE17YC3BNVGYsVcCW3cVkqY+vJdmjmR
	 FycCzH/zDLwq+GMmEed1XYo9Akl8VmBDyoL/dKXllfl0ITas9Qdt/JkRwB2n+44pMN
	 3ySXgaTsfXpiAs2jdN9qd2R9jw6U05tpJTG329klNpsnENcyaRsbL1jZxnlfJ+hPsI
	 FNODQUMr2ROrifFkQ1FwCSqJgjxEFsEUYb3xKS4fbBDaiq1uk20nvpvKYArHydpPqj
	 HU/w8WfSJZmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92731CEFD1E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778863359.18703.2253825061413742974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2033c689cb622b069efca3d95c09880925b66e978edb60541d14f3bbc481f9
Date: Wed, 07 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767788633
