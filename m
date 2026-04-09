Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B26B3C2774
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775736934; cv=none; b=HAxWOjVrBP5E/zTfg1hag/oonqlC8wxo+3FrJB5ANzliS4SKm6tkKVIVgCgqXmxkGnW/YNnhWUZEozpvvQJoflQgLZfU+T/WZoUwvIJDIw+AAZYwQxA1gSKwX0VhCyWTKHciS6NfY5fT8KGBtH6ikbRG/TVqdPQVlylk7Kc/090=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775736934; c=relaxed/simple;
	bh=XGd8UxIvdxErHYkZ/RVVCyMvXO7wVp2pn9dAnTZdwnk=;
	h=To:Subject:From:Message-Id:Date; b=jNNQIqGahbYP+Ec4CBXNfoFoNr/H0csB6XODC/h0rV6CYY++A2QTdoKzm/vgGR2mEWMuQlytEHY52OJHQ91tdvAZB33KbNUH80FjEMoFBir0STO53O2mMHHriJanZdWAoIvpNS+1Acv/2kpXVF2Em8dZVOP5Y88p3q5VhPVTuy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA5zLVAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA5zLVAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65547C19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775736934;
	bh=XGd8UxIvdxErHYkZ/RVVCyMvXO7wVp2pn9dAnTZdwnk=;
	h=To:Subject:From:Date:From;
	b=NA5zLVAjExadgngXx3LVXSD6p2nS39aA+n8FZ4CtkYmqF55YTMQVXp9rON6jrv2Fg
	 Fwm/st30obKis6uKlZ2luHlM7Ai4NFG6e8gkWZbL11HEnP3xYY8ILEdfFHOzlE8Imy
	 9JYEBN5kjI3BZO9n2xJ+6cEEVTc+01y3Bs/tbPlw2dK2DgROyUZ1n6Jyq5ukCH5Djv
	 uOWZMrBzzb8Xftk4tPEvB0vLIf/tT9eRu4hBYtMUnHKdkdJNFkcqccUvv2EziFIm5i
	 NgAqrHG110mK64zx1FzK1zAHOV0X9lTsMelJmM8l1/4JM32ySNWmkrdDX3pIau4rzn
	 DW+Vh5xmZKGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FC77EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:15:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573693400.17035.17671741167924410449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a790d0a26a900442832bb97a8be83d354430f6850eb7a667a804631bd841ed4b
Date: Thu, 09 Apr 2026 12:15:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775736934
