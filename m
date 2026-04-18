Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B341F37D3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776488854; cv=none; b=WHz+p6sdvhFX6o3uMB0bBtl61GV8h6iMG/du6eH8PrsMG+T+JdWz7BeosiJ522SOqPilpXHUMi/VNZd+ujeOyMBeZW37YrG9kD6aKasIjR5yk3y6XxsctWaFSGiGrbW8fS/OTYQX8LWK32T1jfhqu/sLShvxLkWC2Ck0vvs51rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776488854; c=relaxed/simple;
	bh=ZK3qnoEemfD2f5UAlzB92ZMSi7F4ZIxw39V52xjt46Y=;
	h=To:Subject:From:Message-Id:Date; b=kYn5vj06ntifnFwqbhOciaWbUGCyv+KU0z1C6khOGK7TDCzBT2Eve2or9kVsySch2jMSOUsm2/Cc2VPxZiqKPHeXdIzWBSJtfAYg7XzGFqgX1eu5W64PLs5nc0H5lODHah8Qg5eiIcVvh8CLggebrYTmmpVcsEBz7ray6GqrI9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq6bA1Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq6bA1Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0932C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776488853;
	bh=ZK3qnoEemfD2f5UAlzB92ZMSi7F4ZIxw39V52xjt46Y=;
	h=To:Subject:From:Date:From;
	b=bq6bA1Rcrq5A0/O6jeeyymk0SsVbhK4WgfBHHX0P22IBL8Tmvyt05TqdYYhENdLwx
	 k2oCNZxEKGrdpFM4LF76/I10iu8Up4/qb16Um4dQa2/yBNSd2aHVKHpD3misJ88LyV
	 mMEXJQdgVLGtMKrpb/LCJwJgLPGajZvQTFMv6CjuReDr6i8DiK+TgD5dboV6sKYMQv
	 /UWrRU1N3H5EZ3VTaCgbD4eF205mIWOTZf9dIRFhEfkKm+Qg4jMceQdOObKqtAHcgU
	 /HCs6w4tPEU4dj2VYR4eqwgnMfIm89O3PXxDkNmQMzSeb1fEu65JCEpfRGpp4DdqCb
	 VIjy5eGzA5qSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD8F436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648885368.21272.585128537598934636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dea489ed2bf93e8a5a65a42886d77cde681d6a4c06bab639033b3e1aa75adf8
Date: Sat, 18 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776488853
