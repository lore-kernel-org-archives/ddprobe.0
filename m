Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C841199386
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721916354; cv=none; b=AGqCzNaWsCnDXQB9DTCxhlCnSP1es1N1Q+i1/VEFoheOBcbkn8g6Kpzr9wzCtzDQhz8eVcJJUds9y744QKzqec09Cj1PyymglnisAaVX/Np6FKtXQXV8RMnaSNhICR0/aXSez6EFyqSbqL/NtekLz5V98GLuUKJj1Wy/m1piMzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721916354; c=relaxed/simple;
	bh=t8y8KPweRYiD/vWE+GV3Cb8jpBMVVOx7Dp7M3aG0XkY=;
	h=To:Subject:From:Message-Id:Date; b=Pctnfy8HEC21VAr+uzddNz9Wk7phFoGdlnrHXsVdx498OTkqCSocNprfq7Fq9dTEsPV0kG29vOgRbsPNIxrwocckHlhFPxb9i/T4TYgVHFoYUlbuE7/tTHIaW0s6+uCld96cvk5Vq0ugc6GR0dgCqihoQCKB9YQU0b3uf76dCYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu/JiGw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu/JiGw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AE7C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721916353;
	bh=t8y8KPweRYiD/vWE+GV3Cb8jpBMVVOx7Dp7M3aG0XkY=;
	h=To:Subject:From:Date:From;
	b=Xu/JiGw2lqbvqG2Dr7X5KMci0SocM7mE7eWcu5+mvE4uJGXlfu/KVABEerqQhFog6
	 WMipnICPnhac05Gu/Q1f4rpnzdOG3+gryFPmj6KU9pF/+2mTcvHgXkh6+JzPPSpHni
	 kit+nSHvuQs9SEuMCSF/XZz2nouJGE0lxxkC0wgoObT+bfjkHUygG0xPY5vGCajkL5
	 w3TpWFlqFJJm1GqpFV2UgslBY4+uAqYU9FWuYBOETDwbMWBvh+GZ7+pwxwZmR72nT8
	 SaBbepFZ9b9eRQZ9zwENXhci9N7Z40zQMNEm5QJrJU4d/BY7F62oZHpeR5j+5VTkFs
	 byHaFhKq3bRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9B7C3DA64
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191635364.17161.17675679543315812378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc45216b2c96c5079889ecff39fe201fa863cf1b7c56fedadbfa80c1fba769f
Date: Thu, 25 Jul 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721916353
