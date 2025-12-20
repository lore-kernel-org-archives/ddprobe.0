Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CC71C84A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766199235; cv=none; b=Xls/PPNWl1JEQyY3kM85Px8WX/1DXxydX0SDAxJ/Qq0LyT9ohru8bejKC+vWZd/cnUCaunghp1tOuJ/tR9+t8ofvfUPyhkWF3cvTYZW0gKyjePtIr2ho9Inn40bsQHA/2xm1016+L24g7viuySunk7ZU2gMwkqTyGHdu76vC+Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766199235; c=relaxed/simple;
	bh=DkL0zb6PipGhjCcKy0edXCZzQH9WLljrt1pjWd4Bc6M=;
	h=To:Subject:From:Message-Id:Date; b=eQMpyQY7iHIZa2QqeO2CsAAxzGdrjMrkjqoCL0VsrQx/2ZE2aldfBGyQ46AS+lwFyc2J0GUz6qw/pGp4ueoYokKIXc92D6DYUrEs4HRgq5k3C1hYZR24SyVMkUCeIYb10oKw/6OaK/yrDEOy6gMgIatHN9PqbhGq5spi0CCtU+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1sft1uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1sft1uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766199234;
	bh=DkL0zb6PipGhjCcKy0edXCZzQH9WLljrt1pjWd4Bc6M=;
	h=To:Subject:From:Date:From;
	b=l1sft1uYpvT3FQfb2DaTBIlVFbkPd4Qkp5sC/No2RCnO58VHLmMNj2N3CO/kLWCIr
	 vkzv4cC0H0AG9hqWQ7DeDa/kuQw1Gbb5Wb0Nw1hRTmEVHAyKg44T1kTfzfoFjv0nWL
	 p/YGKFJiI0cdPUl+7D8ohU/D3FqIi10RM9WnAyxmK9PV2VZOGcbraaySvv2dAE4g2g
	 YK9BCU5zZvSo1yLxvhBndkfvL1FMsUlqrhml7UuC+SZaOYNki5IyHSGqK/O9MTpjnb
	 Usq3qIYCXnm9Q+QtIq5laDLQ11NNh9RVrnNoEnkwpreRnxWJZtrz7B1lHNhrgRiaEm
	 OLAAG7Szje4cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F818E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619923357.2103.14320197734721596867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8bc37f035fb57386357ca5d569816dae61cc7e388e1b3fcea36877ea2f9987
Date: Sat, 20 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766199233
