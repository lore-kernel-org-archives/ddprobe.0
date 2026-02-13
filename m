Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAE22236E3
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770954294; cv=none; b=uRil6xJI4Ubyy2tV/D3naD1KcTJML5dy62QKauxsA8O1TnFke5U/H77O0w3I6vWcnxT8VGEoJ7vazWQogSJgBUa+B2INjcYHtEXSCe80pP2+yADGKlTjf5RbHTK4RQ2/slx60RYFFVqJ+/4Dm4mo+Anh2Qri2wkn2G8YTQbTKpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770954294; c=relaxed/simple;
	bh=LVc9NHT5lKkmfLV2c5BIA+QaoV/VsQ8Y9mfSC4uDTRU=;
	h=To:Subject:From:Message-Id:Date; b=X7mkEm/NliPvpYD0qrvjiUyv1YxUiI6YizfxoT4bM+xLXHQnB0RdWmcIWXV8QHDiu0rBJFxwCdBJ+Bo5zMRnZq79pqWVFK66Ux4sjRnNGndQz17R8LHw0o7BJITUc6sW4YXjx1LZ2Rry67XzG7N596a7w7m7v0Fp0aa8+6BW6D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsyoJBSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsyoJBSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90FFC19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770954293;
	bh=LVc9NHT5lKkmfLV2c5BIA+QaoV/VsQ8Y9mfSC4uDTRU=;
	h=To:Subject:From:Date:From;
	b=AsyoJBSvxGFh6AopjUwq0YJb11zVv2Xrd2z9bvSjPX/XGnBnDS1ObXgA7F3sc6hp9
	 mjaUj0igtHMwZfANqBGwho6asfBxoXOpHa1R1G7VzO+ldDlaSxJrbECNweTo3fwFmx
	 D90HnI1WA+h+R0a6a1BqlhdyPJDOoM0oKlx2sqP+8phtslI0rbQ88/X13rt+WLg4/T
	 Rufzz5OevS2XroJ/BDie8xSbrB2dwrCR6BYRGyNd57oezJSU1sedESg7UmPbyaYMWa
	 hhfWMLFur6DYkBf5eiCWnvKm2Fnw5dTOFhAeDrOjrGo2aOLfsi/+fKDwrpyiIHJfiJ
	 +vU01JOZO6vJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2CEEF48C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095429368.22789.1330569295814978882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cc38d15847d0caf3631ac8cc209a83311069fc96b89ccbc39f977c31ac05c7
Date: Fri, 13 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770954293
