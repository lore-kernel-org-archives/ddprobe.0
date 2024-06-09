Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2A22D047
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717929443; cv=none; b=stIGcTIuJhT59sS4PfNNd586U/las0c7PWjGXgY5R7oYwONJxjYcB+G26g8xxA+dO2IV3KI+c/qN9e67Rj/ZwbRMR0iziblxZf4TBfZRAcxXB04otTiCXWe9h30ZJoknDpZTJNlquITChj7F3k1X5hGHtrdtu4Dgu1YJ+v9bXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717929443; c=relaxed/simple;
	bh=5zO8/IrFQoHfNE1+1cykubyXvnEx8me0c7xoxjv0iw0=;
	h=To:Subject:From:Message-Id:Date; b=u2Di77zbO2CABExUrguOK21uak9DGRGpGqEULbwPjORsCvgK2bXjtwnVUHcSDwKYiGGcxj3v5R0wz9pQJs7YGILZphaEmGeYdpFaXrqcEAHzuLE2z0HkmN3g/V7FRDj+bmZQH7Z0vkWhQgUt3+b3c2wRNIAb4apGHZgcxdiHR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiJgppmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiJgppmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C19C4AF48
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717929442;
	bh=5zO8/IrFQoHfNE1+1cykubyXvnEx8me0c7xoxjv0iw0=;
	h=To:Subject:From:Date:From;
	b=eiJgppmB/Uh9eCvmL6P1ycIMG3OgPIcQpSyIeULt9KfxhX/zolZ5MNVGuPGb4EJg3
	 IkCZS1YBwmjknaRiYxj29SSyxBLnEdFvJ5KdP5FYWAS38UJQhNoA3sObZBwsb6SNQK
	 dehYpXCHowrgUhhyWZiPdxIh7tBFe3hJ4wkc6AuiQG8g6YCbmPcc/DvhyrJ/uAM9Zr
	 Lt65OO7eHkbi/yJJ8YqVyKiiJCeR6OSTM9OOZHNv3Yo7OBkf8vmJO8Z9kbv3lyqaCW
	 +IagBdFHkKj5x+gnGwDrJQFOJ4sVsR2+iIxhgpS2tM+x3P0StUzJOVA1VQR/cItfRl
	 08kFTX9YyVBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD61C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792944276.24937.3486440982908076877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c3b3326dfc12db04a1bd65f2580f6c20c55205210890000bf476b425dfce37
Date: Sun, 09 Jun 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717929442
