Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E8D33DF
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739756334; cv=none; b=QUJrybUpC0MUaQc/plq4rLpd0AhzkFRwZGC4IZIpA9/15tKjhU6M6HP0ipZgF32HuYgwJNezHyogn0D4P+eTZfF451F8tszBDzEIxzUgAUwBLY7WwczJQb+sSBnP9y4YElFiCDUTgIkBSV8rPGxqnegDaL98bPhXckO+Y35DUP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739756334; c=relaxed/simple;
	bh=oZ4sxrpxev3dSGP6Bv6xwmq8qNsHBghwFhuOYt9CdCY=;
	h=To:Subject:From:Message-Id:Date; b=pgpSgbm7+omZNgLlciMOJ5Ov3+U5xnGUT3U/KL7cMxEdwVJW+zLh54xVYQWwdbCCog7v1hIW1yIpQQ0GeXyyPe/td8m++29AWyixlElb/n2ZjrE4Zu1u883on+Y8CCpFNPdoj5KhNRU5kkqd/VdQw45xS59k1/EZqh3p8+RYCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgD/6/Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgD/6/Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6814C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739756333;
	bh=oZ4sxrpxev3dSGP6Bv6xwmq8qNsHBghwFhuOYt9CdCY=;
	h=To:Subject:From:Date:From;
	b=dgD/6/Z7YHOeSx/7oplEQBp9T6vdUFsUYdK/hzkkKcXyuwcQbXMh4sFWAeShylRyh
	 BPTFvg0+yTbkJZUlWUjYJIF2bHvdQtO1MVYMelPZwKz7ZSueeD7jEkoyTJecyfb6Nz
	 QZ7oYkVb6fJE/kPD+vtazREklQLJmxqjF4mWeWFpcbEWrHzbzrlLJtqCNxKHVkYDht
	 ZxaqBUNaP7yL5Xx2Kh/jHiHOT4IKBJDsD11XnMNxOoL03/ON/FJ2GCiI5qk9R6AaRX
	 s5TxKIapc1B5ayPcWUpBHQ/4FFiDmdX+8KZQyrfJoDOBHNgDQN1OjRf1whsxGuxq+P
	 +O0XTRwqirQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92876C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975633359.4809.11539915889392799129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b483bda65947ce389776b2215823153341f72d586c5cc0fc959703e0d439633f
Date: Mon, 17 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739756333
