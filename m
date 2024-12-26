Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3748B188721
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735253754; cv=none; b=rYRux8cdyW6nnLvKGNkcNpVVNd6R7y2/tqvww1QwoHeh9q5vaGhbxEMKPvAEcuI/JHEIhvbrB8TbGivZfoc1h7bIYgF240h43P9nflgMC3Mfh0JMxecf/5QRpvqnMxRFg07c9SYSTYFhwM80V/UyoYvSvi5Y2Sh6Z8UzfhA6DvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735253754; c=relaxed/simple;
	bh=h/bWqpimafdUxOOeIVXX2D11Qf+UyGrmRHwht1rYkL4=;
	h=To:Subject:From:Message-Id:Date; b=H+4aczFHaIhlid4zgNqcz4apz3rUKrLb8CRRYne5+DL0F6DSSF38+TWIdOqAWkSwYWxs2FmyfSm9f+9r+3sfSyDCKOg+aZqco9YIgyopYx3LMJ+OwsW6f2WW0nbjGi0xHyiv8z4I8ySKJEvmbOgN6/6R2xw/E18PizDBIRlK5W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UstEVHbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UstEVHbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C7CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735253753;
	bh=h/bWqpimafdUxOOeIVXX2D11Qf+UyGrmRHwht1rYkL4=;
	h=To:Subject:From:Date:From;
	b=UstEVHben7XdZcKcAl28PH757hYZB2Uy0918tjFHjTjHApJF4+FvpCe5WWGrujbTK
	 HcYKWycMsJYu/S8xpRr8U9LWJmwE53W+XEncPShv9dvT59K8IrCtlwFqvXlzjAYg8b
	 MVoXig4Iyy2Q3gkjq3Wl5OhwLzFmxhP5ypggheo46KP4UtTQWlVR1kFbmZAednb3uB
	 cBEGCXfDAHuHe1dMSy3u51UQ3nGY5Sp7NtpaBNPIhKFB5VwuGrkLhhJBTac1ZSUL9U
	 WS4A8BtlDPk6txTzACiDbNWSHiJYRPcRSn0dwLYnDHIpacgsJkUVDe8kdmCo30T/x6
	 wc0yw1CSZx3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BBEE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525375360.28657.11692552177752738578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3380c41fc127fa4193b6d65ddf70475af67330081eb810b641450f90dd1b9542
Date: Thu, 26 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735253753
