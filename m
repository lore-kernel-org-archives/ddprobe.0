Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB84D18E1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737511553; cv=none; b=WDBspSWUuTLMZ4sX8X4WoOpoow4z8TGQ9P6eU5uGxs+ziVsn6vq7XQ8ZSXV0Z42IRL4DzkGQOrOxHzo29MewV2dReYMt5uVesJxv6lSRxXLH6K+Ggox3+7fzKb/6lKj7X1zm8/G4NcCny/6VbNiDZcClaUpiwBdk0HcN15ZN4tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737511553; c=relaxed/simple;
	bh=5j/KwxAjtuJ3F/3K+SKBWPuf9Jvasr2ohpGxYkb//d8=;
	h=To:Subject:From:Message-Id:Date; b=gglfp+Zspwp4bVuKTsnVGFqi+3oMlFXQLHOA6Xn1GDOjgpAPWm4Jivk5Z/8Nd2+BVvLvxw/Svbon+n0tXnhKyQO87DDjvCDqz24H5Wf4peSQsfsnSLTzPgxBYmftu9Qvps5QCY2B+/znrZ6tVBGV3QcqlrORjpuEH0IsjnlnMYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq6DsUgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq6DsUgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE83EC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737511553;
	bh=5j/KwxAjtuJ3F/3K+SKBWPuf9Jvasr2ohpGxYkb//d8=;
	h=To:Subject:From:Date:From;
	b=Lq6DsUggjreFrKBAzW3bXmR6CMep7MledfjioH8UClehX5sLOUDRt2Q78KodBPu89
	 iZxVkIKpc8q9daif2jD2z0mPIHSGVJcHHo8wVA890ik9C4SEbKPFDVsNZxmNuzZy+/
	 Gjsy2I2LeiiSfapf4eRAj3t5a0WYpYrCl6Q4jaLsperE2kxVJznWuXuBTjsSS2BBOo
	 I4Re2TKIlczS54GwE+TxwP/ZytPcZK8qrJidSb2oztkPWAD9jVWHpn0YZ4UiGh0jJF
	 tVeLKDK/J//9R7yOA5y1GbU6n4UtoUWrz4fArvj/O204vAaNEfZY2602qq0WQQz99y
	 tSg48nxdx4x1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99199C0218B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751155361.7088.12996317609361452411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c883a4bf5a0fe6f497e7b61eaaf5cfbbb3c816e3bbfd9c2ba19810ee9fa4562
Date: Wed, 22 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737511553
