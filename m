Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305561E572F
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752766794; cv=none; b=A9H/Bobe2n+K6ciyBRfi4tYApZWpA8g7WxS3BxeWWjAHiTBheqkWyP5PvNULg4B3jaC2bWSgpzz2sRryFo/zkxv1vLIG2OWqnigmGD7QPInCOOJwajLpL/zt9HdQqPNb8ES1nLobER2/aZEljxzdMNU0k7A+8gDMWqcTAPquv2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752766794; c=relaxed/simple;
	bh=Nw9vUnRvWATwCz+KexMhjCp3fs2WEZ8qOLijuutcyKk=;
	h=To:Subject:From:Message-Id:Date; b=sKFYl3z8jH7TRyoY6sgkJPouSBR30Pv9iUoQ5+EjKFWI0i7bI9jwkVVHJUPqKBu1RpRrqtNkIuucOf4S+n2KCDi1ibadnMrS0hLvKlD2hxH/GeTHPJOvOAZifkWOSIYRNJsBN+vei0KF2xWoxs0630y/LvDiLUnnOaeJn3KpCEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8yDN5Qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8yDN5Qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5700C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752766793;
	bh=Nw9vUnRvWATwCz+KexMhjCp3fs2WEZ8qOLijuutcyKk=;
	h=To:Subject:From:Date:From;
	b=T8yDN5QbX4XJmF11ByQXrjkn+C+yO5D6rzpTvT6D0sJVzZ42eNly5MwOm+zfcAQZw
	 lYDmaqnzN30CZTCQLx8VZFJzx1Q8D2YGK3LoHbJpiRMSy6Z/DW0QQTUDhMw+Odv/6U
	 d1yChtHBBr2+TD80775HjqPzfk9qb1z4Ywo2AAp9EafpSiPOV8PuCMFcSJ4i+qaB5a
	 NDZ0LULze1Bg3c13kDDGd/tzXs9UiGs6GTCF3lPY+zXnEKrfsS7om8yFdihFmX+RGi
	 c54zPMNYNgA38iyYD1Rm7IsHdYe8ztzbeytdLsVK5ZM061lxLvy3D2VLWOYoBKhq8V
	 2C9YlOQxH5rhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA7C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276679357.25908.10703457700875674630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0ef05b78d8b8f582bbae3c0e4066079fef018158c56243936c529689111275
Date: Thu, 17 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752766793
