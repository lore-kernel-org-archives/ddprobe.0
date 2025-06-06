Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20E84039
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749244794; cv=none; b=SwCRvYrLEM/IbQfki8y8HcANgtjSUUhelvPq+8agPeVUCYDkNaQIgOD1076ahlnzTDIseUNE5xr8QTqEo0LU0r1Fqw+fWkhwcf+AinPA9YYtMB9qfThKgBd0JcqVbQ9vkloeNDPDe7vQbIbQs39XRcH0ftRQAA58RUtDIrq08cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749244794; c=relaxed/simple;
	bh=KxB+2UKejMwR4aakgJdtXxeVDNq5bZPHpdy5FRH/UQo=;
	h=To:Subject:From:Message-Id:Date; b=PKCMqx8jw4379lQVmoXx1RNiuuY6jH0z68KBax0ej9ChIu89dwAQZ8+FsKDS4kM9XQbnPQXIBAmFK8+1t0+fzr0iZbc45lWrgDAzbwoHyZQJagE26W78TAaX4FCIoMD5JxX5301qku/I4vg5Hl4GrP9dIDpYlETt7Ef9ZbxR5sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDtDOLFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDtDOLFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749244793;
	bh=KxB+2UKejMwR4aakgJdtXxeVDNq5bZPHpdy5FRH/UQo=;
	h=To:Subject:From:Date:From;
	b=NDtDOLFVvEIYFjl6ddCcE1AAIQOkDhduGqYcoZgdVT3Q/7SEIZe9az1lsh7P+rWm9
	 rf26ROkbK2gjotMfAK/rA+RHQT7RbzKxCgL0IstVoXFtUfKCvC80k6II9hOkvSwqDr
	 /nCJzKqgDvuh5JvZj1mSeDum+12cB+E/adCtw/1V/MdoRbZTVYVOAu9pwYMgg2eqlH
	 n8XY2NroWSDxbkbkwm3ajquBEuXdQpULG+Sd3ebxiQSvwIQbwr2EmL0GXABiyZX9WJ
	 NRPKmkbnapDSDC6IfzxHsLxaHmM6Bbdl6Tv4OjvjikMOyZRWClVTPkkXir3vqSN9Wf
	 5mywBTTMstzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59AC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924479357.30930.473857617347827790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9633e3b07e0e4347b695ca1945adb9841114dba32449144149891802c842ec3b
Date: Fri, 06 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749244793
