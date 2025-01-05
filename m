Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9413D3B3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736067954; cv=none; b=UxWH2rXtbHx+/b5K2/7C929s3TwtgiM418CsPM6pPz2csIJgjsDIxo2NllxHIgPL67JkSBHGjtTw9vc5d587ixEkHtZsmg/51k1u63Z7I91B4E1mly7cJbvPIxnFj5EX+GX5dn3xdwVbgTkRySynZzzVmiHdiyCNZ+tK5X+zUDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736067954; c=relaxed/simple;
	bh=xaofHug00xgCcURdfiY00w+2GqeQXyajseLY9pUo/6o=;
	h=To:Subject:From:Message-Id:Date; b=Q5+f3DBvd+r1iWo6H3V9nTwU/ieZiof0vvEFKY2kHNsf8JVwrRQI66sUaXLskrXJeN/AKnS9f+BFQtquMUbx2//wtusSx7SrzkBQHzOfw8t7nVqZsetqmagOeS1oeBMGU9w5GF/ARJgaymhkApxsVvyshJyBYqDzWWEvUOWTJiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCuGBWbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCuGBWbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C6C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736067953;
	bh=xaofHug00xgCcURdfiY00w+2GqeQXyajseLY9pUo/6o=;
	h=To:Subject:From:Date:From;
	b=dCuGBWbFuS2Uhir4r0b/eynYZ3lf8LmMu83H1Pf4EBecgWjAwInN4N8u4QWnKtKQn
	 Iz5IoukpQQOztGKBj2dPM4M3mveQJhZ5rPMDopIRfmCf6/cRGy6r+LZaGo5Mmj8Y9g
	 1/aXgKXIVqxI+A3Ei31XX5cWGehgDyaLsBu3+qCkpmbzW1rL/WCMN08T9hYdQzm0mq
	 DeQKaSC0hyZXLbN+ghv+7I3YJ2PXxnpMB3jRl0k4WU0KNSJXlEAfkul3noKOtAB2Hb
	 Dp1VnrnjjFeTrPSBo2i7ohtZkFKn/YYmHfJxA7Vlr3GkaIHdfr98EonquQlTtXpxTr
	 RZ09Bk2xMf/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95605E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606795358.18744.16130618231022124677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aecd588227c2ea628eef937ab8d2795197bbad7fb44ca9740203a0490a9d53b
Date: Sun, 05 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736067953
