Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B466201261
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741966134; cv=none; b=ZtYJh+JpDM5XUboh6ymC766ZO5IrJnDR71aIqdV/rcyTco4AawxMlmEnDJQt79Wy1rIrtIBzkUOOZrZxQsNIMUm6GcVWTSlbZUBjy/Chu69lykH8q6e3XC/+UYIXlJwaMPD+Fv6sp2zaP21s+DhFqOzJVFRUTgX73u4l31JWOMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741966134; c=relaxed/simple;
	bh=/fyDoV4Tbxm7IhNUp/8vqP+U3MH455iUX0yK4V4QayU=;
	h=To:Subject:From:Message-Id:Date; b=H7L4ERknigSKS8sveiI2shRLOSrKclLkAjHzHxxiMBB4KH/rEyr1EPL1iMiBTmaVOrL5v/CBaRmEOFPVpmEA6iKqPT/MYR3v6oTWyNB0/eCbATADksBLNJy/+I8TsOgAgIwrsM9ll9GG82D1DYRKBpIH4JhdFEss0GSIpcuEspU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjEPGKDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjEPGKDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EE7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741966133;
	bh=/fyDoV4Tbxm7IhNUp/8vqP+U3MH455iUX0yK4V4QayU=;
	h=To:Subject:From:Date:From;
	b=hjEPGKDVZyvP7xZLm01rGXH5x8eKwqvmK93iK161Gf8UzY0aeNWQlXK7cCm5M86so
	 Q3g97pWA9FhNjsswB5ZQG2v1vKitfDxcFCUzWLrulSWX4z0OTbMPeMSqPWkMLDf8Em
	 Qlag7UHRBYa91W3aA7mt15I2raVRrdCTBx6PvLwZtAj8vV4daGoWmrBP43BZRHiNIh
	 wB3VtsRBoksheCcJjRyaKBVZo78gatPEghyxpQp6LuGCT15S2cw5kMo8XxdouPZJJy
	 myIEcC6vpn0bE3Z7a/ZrajxsYpphyA4IKYuKp11VmeFHIixi5CEwGdOWeJFcrAJDs1
	 d78RZL1pTF0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9F3C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196613363.10219.10125409387236073865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0859ab9c9709e73f0fdcfad3e88a98d0aad976a4738fba3363a15aac9bb80d27
Date: Fri, 14 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741966133
