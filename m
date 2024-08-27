Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDB155725
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724791554; cv=none; b=NcoVm/pmulIz8FEpIOVdOOc5UDVjjxW4AgYmEZXXfLD+mNA8qUT+QQ5P1gGWBtsC7shqjWFuCCA3ziyq6gRFlclNHZ/zj5siG9JHITaafBBJcVT3mzn0Pr3XlpsuuYdlwAiGXxRz029wuve3Q92Hc1ChAn2CChYm6ZAtaP+J2Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724791554; c=relaxed/simple;
	bh=8Z8w4F3CL62oC5to1heo+pEk3ocquIYZuKY6q7xiNyo=;
	h=To:Subject:From:Message-Id:Date; b=q+qJSgKJ3N/GsujidT7RHz0LNBraYDmPNtqNb2Z+kjQDLahphKnPwXkU6IUZjXAkREKPcPFjdJLv7bEZJ1HaCMrtau/CjRKr8d7nmM/vq/rMZgFZCp7RfvvEBLHDCuQ2eDSqbz6qRbcCgnXWpAvO3GOYY40LBY2d4Z/hUnqguG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrzn/3wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrzn/3wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1D3C4FE98
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724791553;
	bh=8Z8w4F3CL62oC5to1heo+pEk3ocquIYZuKY6q7xiNyo=;
	h=To:Subject:From:Date:From;
	b=Vrzn/3wtJlKOUYPQvr53oT/mPRIlZFOlFy3rj1nnCrlM473equGs2AUcfEEOD5jty
	 gNgwuvJvqev8ACdrEVWYj/9soxmb+ZYt9Xz5kifm77/uj1h3JjbS/RXPrLluUZcUaM
	 2pvBRwkZ/KtgcywQCMyD+ZxmzW/5rkF1c/FHQE32Rhxv3MEAEU67QldIYWdf0Sx6Zb
	 niumb9GHumcVPPYJ1+Q7Jf6v+TFEY3GIC6yjaTFkZ4kvr1nU59XgHHXX0tP5+Xzz++
	 B3glr60yYUxcXyZGiZM3to0uWi1Q3Iasd+/jAQep+/vQgEAS+r2kV9mde51sGuujK4
	 zmNBcPgLEy/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96349C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479155360.23274.5407844691667944481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ce065de994655562304751b727cb83699665c4e5e15801da4a295f81ea9417
Date: Tue, 27 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724791553
