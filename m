Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E163D88E4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774050294; cv=none; b=CW4sB65g/nWkihvx5XnCBYbywV32iIYxruSssiFQePNHHeYdZ9kJjDchAgGQLzr3sXxazg+8nYSbJ0U3FnoTjht9n23K9mIYtylddU5rF/daHlP5Jy1vnZcKB5tiKuNRGRGCdk/wvUoa/Yteau9dbuszGOYTH+LOCX4KJA1KQJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774050294; c=relaxed/simple;
	bh=RGwC9EyIjZvSv7NR7rc2ixnsT+sBJbO2c02yKzxU4uk=;
	h=To:Subject:From:Message-Id:Date; b=AFRXQqBFtpbk1p6rc5cZyb5cb4ES+javrFBSolBPj7y0A+RMKASNHNxwfD1cQ3x5bq6wi9sVk7Mxip3tGHKqSnk3uWSnNIDs4rECVS7BpkJrihn9j3Y538AKr7HyGj3Y/RGmNRQrG1Dii97Q165Hl9Uc3CwviwKxPrzeMF9H/l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpzpP0MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpzpP0MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E724C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774050293;
	bh=RGwC9EyIjZvSv7NR7rc2ixnsT+sBJbO2c02yKzxU4uk=;
	h=To:Subject:From:Date:From;
	b=QpzpP0MAJb28qEqg/K2k0bQeHaLn/yL4UsSP4F2PbtOkFqRcBU121U6vCMidkhoOe
	 EqHeok4SYYUOcKEUMqyz/lg4X7kB47IUifpc1Pamwsbo3hOiaCKUmzudw/vI5Bqb6N
	 NA2cWP5zPod4p1hs9Ilz4v8RiNWMRN+N2uxSaJuQEXXwtUsOOlBEjPY69B/2hjlY7c
	 GOgDGQKPu/lF63qMEBgro0je5+ObOW+u2QikCe1I0Ckl00ENp2nPvQHdgzSu0iRq7g
	 NC1ujlNg04F4REbpK5RWVE4Cemsic6c8htgw4E8BZ32fqCZbsG6DmAgUYLzN6GcSAF
	 4Yw3epYUp4gmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6221099B56
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405029357.7173.4383145715651322964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fc8c64509831987b0a4f7f396e546de8241ff29cb320de7a30cbf69c1a1f20
Date: Fri, 20 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774050293
