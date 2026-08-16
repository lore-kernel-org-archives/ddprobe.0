Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9412F3DAAAB
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786864234; cv=none; b=aynj/SblTk5EJBgcc3k3T02ABLoLDw/ENssVPzX21k7VDXkLqw5FB70DuFGpeUK0q/FAwmLYXzNoW2j20BdJ4DPk5iFcJ+7JzwDfcGll5JFaXRMzsOMi+QHeoqTCwHXjTWxxnCAMH+61cFoe3EDCY/IcclsU1+9JdCvkKHNUozg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786864234; c=relaxed/simple;
	bh=WW0TPvm5L4XoLICH33exI0y8LHa7x6tjka3kUd+PSdU=;
	h=To:Subject:From:Message-Id:Date; b=WBysuJ+eKr3/RUXyNFxnv7DnssKKZd9zsiU8+3gHLuf+XRuhTZtJI+JT91EYD6ZIQXsJAbDpG+NG/2YUQF2H8Ln7NRmTmILEokNaznYVNwDVF/MkKlpJQ4wMmF4vwrHkOErGu/GBXg+PdZ2yvecxl0Mt3BIb4GOBdiHBZy84uNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ebs4twZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ebs4twZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B13C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786864233;
	bh=WW0TPvm5L4XoLICH33exI0y8LHa7x6tjka3kUd+PSdU=;
	h=To:Subject:From:Date:From;
	b=Ebs4twZ+36zX2c75BtTQz7NBS7K5PGyZjG9AbaxECLeI4nO1WEnIKsQkUqLa+Rl3N
	 FxA81fJkgcNQVcxc5O6QK7bWB4EgkA7cL5x5Yqfb87sQqN93Lea//V3ooqDWtgLCPY
	 qKKESYUK699MH9+FSpEnDhpW2/9KdkvjTL6O4R87ZEpZp+iB7zoHz+bo8nrV4nRFpC
	 MWci3d8HJO6P7ZmrjKVj479Q+D2xWTwmbq8Db000xQlSCZ7dlHKiR5zh5PMgK2TXxM
	 ZtvqHR92vXonWMPQsXTCvasXu7pq3KMsa4SavBU6MN/UZjngduI9uso7oVj8qTS4ah
	 7VTt/F7336Zbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1AC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686423368.30940.2880354751339961778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cafd9d26624f3791a0f57af8b49b10eedd620946fbf6a87fcc00f5d8f55bd3
Date: Sun, 16 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786864233
