Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DC53F0A85
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777372654; cv=none; b=ZxawMb7T6ctCg6YgYbwvER2a2qSgIi8kolmlsS4uQ8sDAYqNgMfprIcBwjCf0zd2xwmdZUDgMPUrgPWRKG2hCOThAOILiiQrEXbCeDJSHVoK4TBlJ1yKVZQ+jJCBxe4RUc46hQq/KJb1UIkYFeglb260X0q2I4WDmedJ6Vqt17g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777372654; c=relaxed/simple;
	bh=brX+zIqOn7ovZ4PitiPHGDA46KAQIljpxZilMjzA8jQ=;
	h=To:Subject:From:Message-Id:Date; b=Bu0QZiXlafK0EEh35PSpHxPELHCMoXeqzqu1m3Lrl3KunO2+ql5wZ4QQZPAWbzNh9gxb/WFPPQBNec/kWVJpHMYYDNFdLlIr0Q1hLVD3pPF+0DKwbrmsoC1RA0E8nOPgXnqLw+xeAeZcSKM47IW4Ed4TIGk2Jxglrv8o/txX5ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv+8uoz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv+8uoz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB26C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777372653;
	bh=brX+zIqOn7ovZ4PitiPHGDA46KAQIljpxZilMjzA8jQ=;
	h=To:Subject:From:Date:From;
	b=Wv+8uoz357cx6AkxfijNBigw/tu8qS/TsJvH9SIHTGnlyB+ol/bKvfZ75RJnGl2OO
	 gflcMOSl2EuIrEIpttiy7uYtpZvxbUWDokZIF5djp6F11fiRvXKANcgNR/46KqTkmh
	 jhx7PEmG8dhK2YLNrCPvMHCaPoWjfgMNB6FMmq4wQ0sTn30op9gpYdRdjlvNVrJ3uO
	 5gPFEvrFnSht+T/DUax6U4pOQRTeLdtmrNKLF77n8vN3EFd781frG8H/LiLvNv2QNQ
	 z5b2yzHCQaT2dSV7aZ1v/W/XCu7r6ybpI8UcvCNg41DZc/1Te9CYvWHpAGFkAU5Aye
	 eMl7hXyht8PcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A925BFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737265368.31082.5227720058979342191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d9fcac5aee30b1353068040ac219ab652673df49e97a9964d5f527fdeb9d33
Date: Tue, 28 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777372653
