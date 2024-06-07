Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5249F14F9CC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717741643; cv=none; b=oG+pkxoRizRWe1IwQHDA3M+UFkrp1yIgSeWVtln2AsgN9XU308sMH2a7kLtvnC/Q5kPN8WfrsQ5TWbRxk4Gx3+T6fvlQQ4K4tc7zrfZgBETfh3kPDp9wdtdh7oIS9OIhTN9Jf431wigUN7zkJTjX1d++U/wdIvWyhhgslDlbfp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717741643; c=relaxed/simple;
	bh=SfbOvhJlBkjXRjwq54D4UXxfBqsb5eFeRGeGH317WUw=;
	h=To:Subject:From:Message-Id:Date; b=qO/VZyYa/sRauDl1o9kLZN4/ypNOUMfAr1WbdhAmGKH0kLiJm+Oaclz53f/WFiGBIgm1S41515eQNlJaRCEl8U1WAeMop18Th4Znh7Lb+JAmA5/G4wuzgg1ydVwRTz/Z1NoNXxOfS5WnNKdf8Gkv2mNA905AiZu26q+8Gcze05M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OauKQRZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OauKQRZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3BAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717741642;
	bh=SfbOvhJlBkjXRjwq54D4UXxfBqsb5eFeRGeGH317WUw=;
	h=To:Subject:From:Date:From;
	b=OauKQRZHga+Y1FCrAEF6FHhOrk24/T6yeg1fVy+bbp/3EbKSCrnFHpMaXMxT6tEJI
	 eUx7GKdKX6smZ5nqn2jBvmVg7C2XTie6bkCjX7O7cE09kIBxUy8atxTF9JGUYAi4n4
	 vWD2oZgvm2L6Uv+yvSXtOCrvy6blNV+alOH7ehB9chE7LmvFzTRHNH9LdpEZs8+0p4
	 g5YJJWJ0FIX5upaJKtTa33KpTjbyY3GLZI90WGqoY0wbp6b/cLJtOhIYT/HX5z6zi5
	 3xVtniIIVsyugDIdApLtv3++YgntdSOKkRmPxyb/nC9FMBug/IdB4u97qnqnGoqS3q
	 AvSvTNHew0E9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5036C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774164279.5096.18342161828958992845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5435f28bb13a361e72afad5e451f868b0111b8b6cb0c8fa355b3cd5e48ab68
Date: Fri, 07 Jun 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717741642
