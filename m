Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF028F4
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744540794; cv=none; b=n+elC7Wrzr6+o7EyVWT/N8j0UEbrJ8qAnGzEm+dwS+vHPnFNHfQrpzkirc9/75Bb3KV/+aXulRX7857gZ1Lz6ZY4o90MzjYsXZ2f7AOvd2aWOHNd4NvlB38L7/Pqj9ntKfXR0TGOQzZ4ayyZbZBJJHZdTqzyNYWHqrYIFd43uE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744540794; c=relaxed/simple;
	bh=FR0nQZCqOg2WM93OLwiq51nFSJfzt1lMW8CgIh6a2Fk=;
	h=To:Subject:From:Message-Id:Date; b=hmoORHFc6LdSKxOy2aT+jkMJyMCT6mud7pbYBDNZ3gaf+j/c/Gga7kS66eC/JAiq12NX7aQsMeStyCoZ8JszqYzmYiswcTrQ89sBuk0BVsAr/M71ry3BF/Ajc+QYicXoIksA45OWk1fNdZgf+B8JWgCT9OWVXpx7khP2udejhDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTtPyIrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTtPyIrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC48C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744540793;
	bh=FR0nQZCqOg2WM93OLwiq51nFSJfzt1lMW8CgIh6a2Fk=;
	h=To:Subject:From:Date:From;
	b=kTtPyIrAA6o6GEv43L5tr4l+rS0iW+ncwgNckKdV28mAfngfFYu/ZM0jVNsBJkJDP
	 UHeVLOrL+nUb2by7WmVi1d52LQFmUVimEQbnOjpc4IKDuU5KnEgPGczF/mYUcMaV9Z
	 RmiT49CiaEz46cvXs81N1Lr3x5lca4mF1Q+oSXiexAeUDXUB9nqi4Kn67VdqpPzqNw
	 PNzhM50/5rXIlUzhKeYOSn40cqG2tjKCSU8rflOh0NmM0DYSUAo78dM32Shk8G+aDi
	 ySdjw0dXJn36CTeLRfAroGrM0ISnyZ4gB3UXpgr3I5DJxR81TzPOh03Jm/uLvURhQQ
	 Zmkj3A5m5w58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B53FC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454079358.1592.13865718673382044438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d383ded1fd444691b9656cf9b4fffe20001caad6a271b7a5479658b92c8aa031
Date: Sun, 13 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744540793
