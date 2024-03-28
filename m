Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF3524219
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711597696; cv=none; b=Ad/rj/yRR1h+f76GIYrW36neaLtoYszkroOFX58X2+1lFmT/i7L0Inw0vJp1zgxTlBx0uaiC4N8gFDN9T/YrKzs44sH56Qw0eoBE60WM2P1tDqy7d9FNdnFE69eUo4l8Yc5wN43NjKN0S9V4SRrFk+kmpKK/RqvDsfi96fYlg0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711597696; c=relaxed/simple;
	bh=VgSbE9KB/NneDO4/uOet3xkcuOSXgJSwuysToAbEVWw=;
	h=To:Subject:From:Message-Id:Date; b=NbJsIpuepTunLwVwLmQUgyYaGn3lA6lK8KsN7y+/AzJMcuqNTQv4VWrpe7S6CeGWr7l/C4kzbkbdyfxvRo5xqs71JxvUjfUu22LVZuoC7V88bkMbOudW8o0P0oOjsz2PpvkLxKR+UPjnl0NkRg5ewHqFkkk1ZGhvhYxC2mS4Tg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJa1HHp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJa1HHp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4D3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711597696;
	bh=VgSbE9KB/NneDO4/uOet3xkcuOSXgJSwuysToAbEVWw=;
	h=To:Subject:From:Date:From;
	b=BJa1HHp0sl/mvOpXn9Q/nhwO4UmFjDyKBFb6qpEx5G3/3rQkE6/YNuuWaojcgXe05
	 06z9N1AAjs09ZB24GyUDTDWnFonn+Qini7xaJv2CicWqTgkkYZFrtyhrhESGUv6Cgd
	 tuaEW3JTDU1qUNshkDo3Bf0/c28/wYwueuRndG6l/KT6ly8S88ZqxO6rw4l67lJ4dE
	 7+dgZYyLhuVIFprfAwn9P2NNbaTMdDq16lLxIi9NR68y9Jw4EWbuNJRrO0N8UR3xct
	 0i9mM/bHS+my5hAsuUqVwoVdyaGKPP5+vwjcvH2g33rKt3ZskQIdaoUHIgEYvmJrgA
	 q5wnsHSwR6utA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674A2C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171159769641.30898.16910832267571100330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6b065c34ea491736cc49050515ca51f951078181eabbe68d2bab3236ff3b76
Date: Thu, 28 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711597696
