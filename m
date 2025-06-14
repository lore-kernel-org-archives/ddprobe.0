Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123E11DF246
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749884394; cv=none; b=umt2VMKDgQ3hZyp7GfI66NNUahz7LoK4AreTdQo1kYAt1a1M4lpYkYb0loHXPzYtUuyxwn0N+0yUVAhBD07IAsquRlFoLWzzXzhm9KLuDmdvYjfYdgoYlfwBtWbYqvieAbL0omDbBeIxa8lB9ujummka23LbcpaHcDsXQfvhEAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749884394; c=relaxed/simple;
	bh=SNVAgAzmlbaoHwXFkLlq4RS02icM4xhaeDj4ZGhFcqo=;
	h=To:Subject:From:Message-Id:Date; b=FMH+tX9q8P6x/R6XBnC5gyzfHvL57pMW5PLTDAtsWSOHOPUY2Uf0W1dSNAduzZEujErTsLYC6nP6yUsef3mc/vpAirzlSxN9N8Svy8tV0simP2GtjU/N9TQGHsIYFuD+eOYmPseprF5Rg/ym9ykgez/l48mo1ZI4zJEXu9vZ4UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiuXUrq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiuXUrq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E423C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749884393;
	bh=SNVAgAzmlbaoHwXFkLlq4RS02icM4xhaeDj4ZGhFcqo=;
	h=To:Subject:From:Date:From;
	b=UiuXUrq5aSIaKQyFodTJF0R9+SY9kNnbFicMRHi+MLS4Tf3+ApU9Z4+MP2HoB3Etx
	 O/cU0Fcig6oRmADoENidhVlpK+RrSUCL7pdgYG2RymFTfTgImbvm0BWojH2wJLPD5d
	 pqrsQ7nPRBlAwI9KYVm5Nxe4iZay07NvESTiNlq1Wprg7gydMhn4FmKnpKZ4xSHoFs
	 gxVoGLKonaHI/W0JkpVlb7PZImBiTRZaR3Pi4gd0rz64oUNLFtlBDp4mcZSZiHq2ja
	 C8ge4RpLtRI9/1sL/TDwU6Px7A6DgXXBpaLqlLF1ELavR3Mw9rc45Km0cPsfs4BuZr
	 eXD0dlPAPkxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D6C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988439357.14104.8723510049010203927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c544afd09b2d60d74437b30ab7e802bd5e25d60cba4854ccc039b95ddddf3d26
Date: Sat, 14 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749884393
