Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A25C326946
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765923234; cv=none; b=XBcFGFjpr6MESr/ObDgI56L3Kr1eNQSJ20FyB9tSgCfjDYAoZ4BvD7uarCB6Ybfu4D4Hz3zq/7urHqht7LVlEsMNUhJrGihf726oPZnXM1SLk+l98aCcEDzVEMvuALh1vPTkcOmSFuMUTJCbsP/2ApdRxGhh/UvCoeLc05YiPls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765923234; c=relaxed/simple;
	bh=x7C23fyFxZ/IbKSKrwLpM9HziXfnOXAbLKg6R/7ZPL8=;
	h=To:Subject:From:Message-Id:Date; b=aVh+UQYSWQ+PYgFLv44DfwDVJnX3InySf7Az4zMFiMwCU9L2DhYDsYp8jTo0bmHY01Dw+Kf7P2bUcehzBcprjhSzATL4Rwm6iW9fX6tncPHv4BVsxvB6VjO8alTajSthBPx9PzDQ/z2hL6+kh2nXwErhJeKYjfdWDzr3wxpG1dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Petpzr0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Petpzr0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765923233;
	bh=x7C23fyFxZ/IbKSKrwLpM9HziXfnOXAbLKg6R/7ZPL8=;
	h=To:Subject:From:Date:From;
	b=Petpzr0uoez+Jgp9DQBqIoDgM6hMpmbpaUDqYcLuJBDyGrmC8tLyaBud324bfZf5f
	 SUQj7qqS/3rENd3gQKNcKAxwJC/STZwA4vaLanHuJjjxUuvvLPGXBr6Dw5ljCgwbBf
	 R3tt80CgftJTZb46QVfe09b7kVVc7E9CJOkL1wrAtPV4SEX0tM3ybs65+EJd246ufS
	 4229XuzXBUJxKm4vC78TVPF2GbtAT2dscsz7kNs5sU68UzavfbUCgFHARmR1QBYi5t
	 8rJ8SJK3R7A4aw3IVpTjc3Vuh6bNg/3IVHxKFVVxplDnbIf99GKlvrgfL0hfFz8gJl
	 I5ZdPdtkrsfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D6CD637DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592323361.18472.3294030303424309878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f4a7cc65fd6c10041ba51c8eb48524d598ceafdfedebe84d59e187701a2dee
Date: Tue, 16 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765923233
