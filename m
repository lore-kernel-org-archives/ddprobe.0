Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614A535504D
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781447194; cv=none; b=EronioRYZc6jPH32EdrPCnVHvExyKghikrh/xDWlxHDGh0PKeTj4eKL1EaAbXLZcuXgiyamsf+Pjd8z1CJK4o7qJ6KuyG6OCkuLGMMA+mbKBCli3d067Gg66TS1oIIknOSxH8w6e2SvYiN7MPQxjLWPRCPVqtQCajvgnT7fojWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781447194; c=relaxed/simple;
	bh=jeeB6xe3KlMI5wmuADha3bGMaXM3WgpD/wp7rvxkc90=;
	h=To:Subject:From:Message-Id:Date; b=HGFyFxjifXE3M0Gk7IlttevfqU1dE7vl976rtxsEaq/lqkh6lBFY8iJ0vTXwTqb/MfRMf4QQwN/bvu6h9Ly1B+0PSPrX5fvMGdtgKxUyyx4y7SodiJI3R47S1El9xYASszujGDOMimoJTFXU8zGLZPD17NzO1igfFPq0P20xDI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUyW5tV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUyW5tV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F74C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781447193;
	bh=jeeB6xe3KlMI5wmuADha3bGMaXM3WgpD/wp7rvxkc90=;
	h=To:Subject:From:Date:From;
	b=PUyW5tV45k4DoTglbN5gGXxxUlaEmlNFKdpfuD7KFtyvDfh22u0f/vY2YzyRvG1xN
	 KkhtztxGH1ZGqOE7Zh+zAwa7BO7vE2E46xCJosIOniZdyM0/Zty7DT0/+trtvzXCdD
	 FNtA1KI+7ImVsbhGdl7kLVCjVPJXzEX707OSfX82Vr74HiHT9vn6QDdk9jLlKMSIJ2
	 g+Wq7/OrO0JIv2UYNnjYZkb6q6FL3qKCsgxAMOfgcOZVH5V2yyaHceuMFLdtNzsVlR
	 0qBzb0zPsRhTkFSpdpgom4SP+S/sh2yfztgGRaks/CBaCV1apWhjz/2cJ+vcQvmjh0
	 tXwW7t+dsLYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD8CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144719369.4783.3163981682193389070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb91d03e0136e9be5f099423268ec9ade492dc6b2220c88e58eecdbc4c04319f
Date: Sun, 14 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781447193
