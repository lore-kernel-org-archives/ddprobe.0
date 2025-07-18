Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B5A923
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752807594; cv=none; b=BvLBZwzDmTD2TD/8L4A3S42nViTUNZ6sG8IIdOgRh7fHyp6s03v+X0RbtMe/fES74Uv5uyZs1gNragBBrSgzpxPQIbZPkt20VIGPUBWG3Ql1X7btgIzSLew+GnfJqzvMHp8JKwWRRtKAyUQ3btFnhoJdGYO2s1drg3C549E/rS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752807594; c=relaxed/simple;
	bh=RAUHmlbWCKBLpiARpilrxspbtkKpL4Y26MXE/XrsOEA=;
	h=To:Subject:From:Message-Id:Date; b=DJMOMQs5FsH8SaTVe7zDlIMr3YAQvUdzoNScc1UN7BW9yfcfydLP4kLfDOyfP4zQk9K+VFx5nLb37k5h+iPLM2wH6TtaYiZV+Mj+4FuqIGu25V8agZQTJUxYmss8ulSFcHgXTfIQrI2Bw6+6FVrXB9tPAfM6mzjXKzNPrK3q84o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdMa2W7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdMa2W7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752807593;
	bh=RAUHmlbWCKBLpiARpilrxspbtkKpL4Y26MXE/XrsOEA=;
	h=To:Subject:From:Date:From;
	b=FdMa2W7WaJD3UAFb7crhGxs1Y6mSE7X8M6U12w1WCgKvrqMDj1WnTLK7jZa+fHbIt
	 xu3JJQKDoqFLqYZ1dBM0synZx4xBAMaK33gLp82YoZSrSnDLHEyTNrt7SzzQ28BqRh
	 CIusATgrK6ti4lIoSCjdyY0nddnVPB1P9QDlDGCNFEjX0knzh146wWALAwBOnrFpAP
	 Nb/lwiGzIM/6JTh5zM7aKT7mTGRW2aJf1Ld8srHtDVVrvEJ8FSGwyNR/hFSnuDoqVU
	 I8/gGQExGtpN7fai7O3W3zTGlhE7w9+a//POWR8fx3D5GebSiQb6oWHfnMKt6eL6Hv
	 BOXwVZJNRWVgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CEC83F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280759357.10444.12336441687708455559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0545bd023df6cff23c80193c644633dc73a995dbb61faa4812a359bfd3f91930
Date: Fri, 18 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752807593
