Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F1B194A65
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755418794; cv=none; b=WQwHgGmQ+feIN6xHemNGTU0uKD2xY6pFM6GOnLWHev1FtTD9m2u/ZPOnVqKCUN8Nh0aK+3C/5wF9dF7wklB7XeArfuz+fYs1GKCsD6ckfQqG1rABZNucV5EaESUAKS4LByvTqsZZy61615aPrDxG5cimnq95g2tAhnyCuFxfYho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755418794; c=relaxed/simple;
	bh=j105Vf4OYIe8WfRz9dAk6W2io7eEISXVdzy9b1u8fbk=;
	h=To:Subject:From:Message-Id:Date; b=GfMf36XjekNEY4vLEcUYG19/QaOjHaK/V/lsd71Kd0np21lKjgwx3ZZwU8JpQUi2ISN/9XX7hP1jJHrx41ByRlLeXtYZYDIZbjLVJxHKg7KIMkJEVEuQb5Z5VNoTJa0IjhL67KGCuZY1QQ2oOTYKSD8sdTdjAzt309fph1ZBEXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSjOrTKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSjOrTKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755418793;
	bh=j105Vf4OYIe8WfRz9dAk6W2io7eEISXVdzy9b1u8fbk=;
	h=To:Subject:From:Date:From;
	b=SSjOrTKcl995A9HS+Q1vO55n+gAcd+YCKfggTZTygSq+i2cTLLZ8IZ7NrXJf8k/il
	 3/8GD8KEA7RymYIsFCsPml7aXFX3O8B4A//0ppuPipDq0+s51cDhRnvAlk3qgjQsfe
	 gpQ0TSEp6kDpLpYs2AaWD1nInzhEx+SKKFumoOCsmq4w3jNkUqNdZvsMaVoYVZ6F0b
	 01xOtNFoGTQYRhZCuw9kexT6NEM9OJboikI6iayxDmyKUAG8Szx2S2Z/oSqoK8V6a3
	 E5qb0ce5c1Jm+KWB2glaGRWi/B7+Lh+bFLQUSMcKEHebl/4VGVH9wYYGUMaN17IWAM
	 rGDy61MkM1gfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B7CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541879357.12302.6012531897393910374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb153d021a95c0453fd009cb02057c5e5dc438082e12f14ef24f954b43275b41
Date: Sun, 17 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755418793
