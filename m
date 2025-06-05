Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376927FD51
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749166794; cv=none; b=bXp0dc7yk+nnrELFfR0kE1sHW2Wm2hdFh9Z4iU356ddiiHovK/Kaq4gWJQiUs/cbWnoaOERnPw0F60zk8Ckk46/VByS/xaCVCZcnS5V0/pym9F4dm5S/01uam2I3J4EU7ouxJnQ7D5JexF80vK5IZxZ0rxDl2SQB4dAZj5F4Sio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749166794; c=relaxed/simple;
	bh=hLg6zxV6nQJvYpxOCnCve4MhNq9R97QRhD0vzGzQPL4=;
	h=To:Subject:From:Message-Id:Date; b=rDuRSvFOcBSeawgLTYGqPsPCTaKgR1V5klrQl0npoQwJUOgoYbiyRoCp0XBVpJt8hXcFdzg5+85zht9gZ/0hNourml3EMARe8FSeTaLBfiF2i0lHDoEETZRNermeRVoL8JQYv1NXLK+mGYIJWIVI7UL0V6OZGrRYmTL0kFdoNvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJMNGWJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJMNGWJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B1FC4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749166793;
	bh=hLg6zxV6nQJvYpxOCnCve4MhNq9R97QRhD0vzGzQPL4=;
	h=To:Subject:From:Date:From;
	b=uJMNGWJ2AAk55AveRgKrEv6gn+RSqXaGw9RTq2Y+uvL4Rbkq/kjdsPdeAxtxqbOcn
	 j8sUiK5BLmSxUpDu3C7W+1qvwQsdNUcWTqhVtXjW0yhljJF29DVxI/eYDMilYO54aG
	 bTNSvdfqLLAFjtNhMOnjnrwT8NIik6cd+eylPVW772EI6cp3RGOGSftp6YxBgtDOFA
	 /qhwVN7vSD9Vg7BwhuoLQbETypAV9BApI8wwWIDzN5PFuVpLOt3vsx55kcpo+LK3o9
	 ggA6g+m7k2pr8+D0MGrnuu3NkTGNYWRIqYL723gat8ztQC/g2fRWVFEqoofnv2Bu1h
	 Ke13THjWVga9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC3C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916679357.14911.14466014361887969821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a090bbad67322c6ca88b7240a9387aaff76b13f62f2db81c97fcc325dd0eb725
Date: Thu, 05 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749166793
