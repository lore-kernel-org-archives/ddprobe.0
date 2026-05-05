Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22364426D25
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777983454; cv=none; b=bVo715O5QYQ+5XV0r8Ngdmcgkt5yEqO15oERY61b7OL4OI2rBBgOGo4KwkjGdrpPt8yb/v02RtHeOK9ZM+kYehqS/lupMi4R8OjkKYy5+WV9+dlWZGjshWCLYV+zUe4b3DDo5YixaW6vi2JcQygV+TcpetVpRuElwiveL5Hy8Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777983454; c=relaxed/simple;
	bh=neDUKZj7vHBVEPjGqSD/b0L3TNUKPxwh308voRXmGzE=;
	h=To:Subject:From:Message-Id:Date; b=pTKuKUXSNeOS5T5kTTtT2G8T/j4sVNjtMT2bkQyFPDlFiw07crTykKzayJsQNLsCo07aH/QwfILdDvkIEhPkoFR4cmmZLw6QftPPVuOMrkrU7fGzGMDMPBxR+D9YXu+fpk+qzFQt68b2Z0+C9nNDg79EPXTIT3qVPPgiRcTv4xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYJxMn/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYJxMn/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BDDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777983453;
	bh=neDUKZj7vHBVEPjGqSD/b0L3TNUKPxwh308voRXmGzE=;
	h=To:Subject:From:Date:From;
	b=RYJxMn/7+eodJxKNsyo6cLutdGf6TZ3YrDsYMlGn9Ro688AOYQCEclfzyYhG9akwr
	 rmUFwi/NXmD3SWWlM6KqGIF5RQQKLE0krOJIQipEvpeLpnoS3DBzVzlnQMj++8P8No
	 mT5ZadVrZzG3j1h6YGir/aIulbp7mScz6rLkHS5RCXHejLa2KI3d2d4c3vdrijyqBE
	 9142/lkgsI7piY00yWQbJmPuSLX/nOD6jKsW3vqVmlZOWWAR5r1gsj7jPDs5VuDAWZ
	 /XdagiHTwedsfLrseUlO+Tij7nb9EdEsCyQYIPEr4KYzsloLsSb1uCArqsm9AFJ1Q6
	 eATohL7OBia8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C6CD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798345368.18957.14604381158026858122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17b70514e0efc8fca8bf4685a5a37112e28a09ae6c1f02893bcf958c1b56a5a
Date: Tue, 05 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777983453
