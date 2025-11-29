Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B41E4BE
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764399774; cv=none; b=Azm7VHVrSWZh1S2roudegoC6Uw+emxvRbdhsbgZlxgH5LVxEaEH7jYE9BvOUts2CkZCM04w32to8gG7WPK3z/nDHguh2njDQqIhaziTHTlVWljP4PPDVrh4LR16KtHWHOvFHdqQnq8q4ExjcF8HXcfh2bmL+zljhL5+zC3P3qTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764399774; c=relaxed/simple;
	bh=5bFtFdp+rynZwqHG1er4V2OKv2exOoWlJbe/Mmyq2M8=;
	h=To:Subject:From:Message-Id:Date; b=IAgkqoxLX7wAKWlvM50T9Be2ieOmkENkg+V74OsL5UHlHnCk6L3gvqXJxYH4hWmuUGG/YVBJU8kwItUC7D1GgN5fMyfXdgWUmCGStox7i9kB9o/QkXBxZyFJ5fSeHusWoOWLQcrmZJZL1Z2vh2v33EQAlGffYx9tIo4JYUlRtJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sigu8JGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sigu8JGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764399773;
	bh=5bFtFdp+rynZwqHG1er4V2OKv2exOoWlJbe/Mmyq2M8=;
	h=To:Subject:From:Date:From;
	b=sigu8JGypHj9xtvjXXfdapmurWBqa2zjYdtoBloTrDKt3yt9tDCkxFt8nJ9GIaJ0h
	 IXd/bumHst/xz4upc7pHRPz/xZ5YUQxhLUiSee6Pxpvjzwi/D7m99s7xbXd/Z+la8q
	 dVvwnYga0W4MdipanIDdau+r4gyOnB2y1Q6kNuoAMwT3sKE6UhGYbEPrMdBj371+6E
	 MBtfNFxjaYBNn4p3dyjeSR6XfHBVZpZfAeZo8TqpRUBoW4VKlJ4qgZbtwWOpnc7aKD
	 R9l4YJ2PXVsBtuxWr9Ce3X9NauaDiXr0Kgx/CtD1zL+3Ti8ceb4OzWmjuRRtur7dkH
	 hM8pqDfSyJkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A87CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439977358.22853.9888070844040990743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07373a31feac0592f59de372c7556acfd5dd9c9f4637eca52b92b5ba6ee848d
Date: Sat, 29 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764399773
