Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8220F082
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747136994; cv=none; b=kVpO9hnQLDl6KIYDTorCHqj4zDRR/TRQyi89gX/PIUoK6uL/nGSESsgmbGl+O6ZCRw6kENV5TbED2Bkgz7L950silPLcg7gXZVgW6vFFh2jHAi0hVUZLwR1/yy5MubNUTGJS3F5tYNSueFvX5x5J2D7CIOXduqC75mPDA2hhvpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747136994; c=relaxed/simple;
	bh=vTZB9Vdkaah160QTGj6nbFu6fH6DF8eet+JTmTS5GFY=;
	h=To:Subject:From:Message-Id:Date; b=h7m/cuitlOhVRM+kcHbzypnaZLqcWi3MK80rM1SY2t19xoKho7f5g+C8DHCiC+ywxWmcvAOsNyd92C1L6T49v2jhv5XVuMy6w8OnQj3y1e/LwzM21Jn0EcR4HqaFXjWIWWpZbZPVTdZMR7OfL/iPruXVJvB4UrNoAnmsYvyLSgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaGW6/Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaGW6/Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2963C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747136993;
	bh=vTZB9Vdkaah160QTGj6nbFu6fH6DF8eet+JTmTS5GFY=;
	h=To:Subject:From:Date:From;
	b=aaGW6/ExO7F2E67WxTOvvTf6h0V5/NVR63g6UXbY2m0txgmnQL4ltPzv0Jtk7SQdg
	 h2e9g7XXTx1h7vTWQ8RsnsO2ytDrhCr0OAkrwqS2S7zgaqlRJVjCKYYZ5w4mTEu+Fi
	 XZgYZJgKeHjvecVn/vpVavo9uHzvX7BrRRjn+XrmbtuSfNX4Sy0uuhZM0BdZH8dxNK
	 p1ukpAC87Lg2X37JBJ/UFkcwnorju2mNOS+Q+uH6OVMjCSDCWXwt3xMLY6zkUzjlbO
	 Y88OeJNclQ++IFo+UDnF8C4KQXFNZv2sLrU2I+Bd/OkE9ZEea3qmE66XYtIsqnCNE3
	 pH1swKxcdrHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F288C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713699358.11378.14734567890685427708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d33b7561f323de632ca9d8fc4c97033bc33232390dcf80a28dfc63d97a93d48
Date: Tue, 13 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747136993
