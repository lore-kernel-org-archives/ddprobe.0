Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12421227BB5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774319094; cv=none; b=gJmFuGKKKUJOLUy4wxWCy4ZrOtv2qHUT3z98vNBgdSmB3CecW/P85PaM19pYHHhYrBIpWmSo0haLsXmpfSStO6OZCVwQ/YoDkWMrtusuf3LPYgybjI07YAmQvAq85pph8Rcsi5sayly15G4dKUzOK+LLfl2NduhgPBrBhchJoZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774319094; c=relaxed/simple;
	bh=E3Deo8hT+s38EE9guWEUpzyQ2Jg0651oKLOeqogUqpE=;
	h=To:Subject:From:Message-Id:Date; b=VS+wHqsFsiWk1w0O6aO5AaUZYpT3Fhdq9GmxqWStm8UYdNgm1GzlKbfW3v7iJYyKnkotR/uP/zeePvi+9n2Yl1a0ofhDu/b/gNHwFgKnRS6DOSZLw+UzQj1P2mD9nqE/pD0SdAfVzYGghMiktp8eJ3k4+ZnKi9KfXn4ovYvE0B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prFpS33Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prFpS33Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A97C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774319093;
	bh=E3Deo8hT+s38EE9guWEUpzyQ2Jg0651oKLOeqogUqpE=;
	h=To:Subject:From:Date:From;
	b=prFpS33Q7WfLq2isHR3N9PM5HmdUUucj318kot2eUF7dRRZMtS43nCB6XRPzXFWOd
	 1UIHmkRRjGaLyqVJy8laGJcNh+FjM8sJxWmT9KMxJg6qhfeBd7og89JVtlL/v5G5ST
	 I1F30a3CqGQAXUcHhFCmCtEfQIWicuRO46KQaWi0ZPdtGHVu+KBf5D5QSKaWLUmeRz
	 Wofs/hVNWL75nADNpqhdNhJ9MiO44BWJOumoVcDy8V5IoZev6gAFY7Ll5o99FUGV9X
	 2Fy261ASNNEz10Ukvu7P9Jh5sVLK4Bbp56BWaFNNOvKaVhp8F2jNvqjAinMafri3Mu
	 OfPjapSh3XJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E9CF532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431909358.26626.9387227724485195134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fcf4bbe861c0624657337f504efdfc25655ba8e1721a740f72ba75dfe38414
Date: Tue, 24 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774319093
