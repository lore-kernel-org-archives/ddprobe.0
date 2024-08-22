Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252F413C3DD
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724309754; cv=none; b=f99BthQMQo/Sx9TWArmUYOclkX0bM8Xcdnwkk+eU7YESPnlf+QTpZgs0mMQKqSe6McpyZGTG1rXptZD4dhH/v3i5o1hNT27jlLa6gzgeray3XxIz+xXwryypkLG+yBmhv9G/XWk71Uuz6RCI+Mw4hR1SnGzFzP9iwOLRw7+mt0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724309754; c=relaxed/simple;
	bh=TgARyRGBxyOGy+7qHTJ4VEPiZSWwq4/NwkTQMr7xEY0=;
	h=To:Subject:From:Message-Id:Date; b=qkIRE4DH2y42pTxzpAwhtG8DxWmQ2ATfnxFVIekXwlA/+Dnt8yiseocrDexpNmzzCiJ6P/vXPh11k6aYGMzsThPtwYpQbe/OC6/8DnsySZK/0EqAOIzWMOMsz+Kz+e3LyySPZ3WVCzFINCsciVl/62jAWs9uJKwia/YceN/eZVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i60TyKP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i60TyKP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5BCC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724309753;
	bh=TgARyRGBxyOGy+7qHTJ4VEPiZSWwq4/NwkTQMr7xEY0=;
	h=To:Subject:From:Date:From;
	b=i60TyKP4uwy5wGEgxygrMt7vHqytza0fU8KE+2YfCe0vuDpbEuqC/2L0OJQID0jFz
	 Wris7rLZqU6r3EhAVgfXYgYJ62jH4kPyD6TfPWSjpwGle1VJDx6z6e0DoJCdCuKLtP
	 lNK5bpcjSJC2tu/ga2TIM4voxSDp+iSCaLpSD6A+v4wALj2//APKOXQ7pYjRITZq80
	 XgyPZ9l1+mxrZB8ff7DXsZ2c7H3WTvbLBJ2DB9gViMw0Sd1ycu6fnwZxffsKJAo+F8
	 yjU0OQPI8461gKpVYVNPdvECzhmQv2h7B7ZuyA9XK96PXJBu7zUmN9v1olWelARLU0
	 yWlyfDPUa377A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD59C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172430975369.16178.17017647561666815052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee12586fc90317787ffc6813d09ea37533f0217c3593ab35e1964278ae3ef179
Date: Thu, 22 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724309753
