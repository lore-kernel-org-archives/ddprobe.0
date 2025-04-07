Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77A235375
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744024794; cv=none; b=i47ZpMqzvIFQD+KkdEa3gkUQgBToWkB3ehDIvHgxS555aH9zSQgTFLAJSGKGWzmb8Tye5T+HX1K1ZIUrgGJ+P3INp97s5pGjgKpEgJJJ/lCDaFa5rcQNm+SH8plOvKaK2+ZY8axpJ4SbX20GFlt3DsD85dIdnZdxjUw073jfASI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744024794; c=relaxed/simple;
	bh=JMhWj/3jQ/nezFETTfXHO6IlqTZN9AVO0ydine6YZ2U=;
	h=To:Subject:From:Message-Id:Date; b=dRYPXlRKKhC3DgO+jDbk6ac1J9HEaWmQOtkQqeX348Q0dZTN/T8WKAvpdrtEp3CdyuOxAghKjWGQZGarrm0XvIQuR4mNGM172HFDqKPbD6igQEzQmVboxcfFHpMLLO6RNSpOrUwjF0KofOQlYedcf3dAqbfrf38glNopAicZkmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnrmhnz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnrmhnz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C02C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744024793;
	bh=JMhWj/3jQ/nezFETTfXHO6IlqTZN9AVO0ydine6YZ2U=;
	h=To:Subject:From:Date:From;
	b=qnrmhnz6O+5UYl/Yz5TGPyIsGj2dwQSbs+iA9p301Uus+MIa1gGpSsR1FOMcrpdMd
	 fRshaSh+5VH832F/cCqGL64m3ZDwJLpVKfv6JUVM0I8ZlPxKxZmTRAD6fz3pYELcGy
	 duba3RrVg3OND3Ts2VwMKtVTgz/IIoGuWu2lbiVOK9rMca1ZixYjUTt7M+gttrvy27
	 oE2EdSr2Sdq/Q0NZKGiM6Vga21NRL9f6qFKuGkctWpEO4ej7ZG1mRkGJKckb4u1FxB
	 EG5Z3thnbPeksLl9pxHXtCPxVPz3sAyd0+CkmGPKrvkDVW6lbBJ5SNCe8FzkSWM05O
	 PyTDJjF+5MQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDDC3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402479360.26053.12176900550644243147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ad93d8fbb40d69087f3d6e8d407415c8ecacc66c4bb18a88e6e898dacd04cb
Date: Mon, 07 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744024793
