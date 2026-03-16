Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B89D23EA89
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773637494; cv=none; b=YvTRmO9f/QbJ/kgUYVhlWY9CMqtC3u1cqb5hNMAt6bByrHeO8QOQRXQhWJJqOggRx835+r8AdMh9gTFbL4t5F2+TbBferyIr+/znTPxn1KCFZ6MLKZ7o/8qmPfD1Ecn3uUAbKA7RaeXtKmY9haTtRUXKifLFnrEx8R1GawTYnqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773637494; c=relaxed/simple;
	bh=Kg/XhAHLHzE4aCBLDvUQ47eDEOjYPfC+51D5BKWJkas=;
	h=To:Subject:From:Message-Id:Date; b=CUi7Tmq06KBgrqWWPrKE8Zi++PV+5x2iUk18y++XTaLUU1qrYeTfqXT7QeZhlqtwpxzHafnalPrQEUYA5z3b6phOZZZ3AafV38XMl60PkN9z4JkXNnvb91aUxeIr+nAaVfsq1BuUbdjcgUy+CL/N135iRsWsRoRoEIZSAuWCaaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I90q8Hsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I90q8Hsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A2C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773637493;
	bh=Kg/XhAHLHzE4aCBLDvUQ47eDEOjYPfC+51D5BKWJkas=;
	h=To:Subject:From:Date:From;
	b=I90q8HsiRc5FyZPbV4NMV+F1zlzZt+bqcP1nTe+sWd1Yu84dgtpp3CT9tGtKrMhjn
	 EMYuavG18j/QIic3Q27NUMxwSmEI4Lu7b+AdblIJYXRHM1O7NAkhTIQ8lGeeFjABwv
	 Orydeo1Ng+zOQAeiJrma+cC5E8fLEqspjCwi2vWjGQKRg9Ee0LTndyO38DDf+Vrw3x
	 mZxGpPBv3XI+cpvfyl8JY1SiOyoWG5oY5PrC0jZIjoiUNIVyUpr0FL9kKof1VLVR9L
	 9XPQVervooahqCl6DkgdduUn+07kuG7Fq7W4jkdMboqA3/CjiDioLMy/J/ewqXnAOg
	 iGriLu6CPjgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3DD58B21
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363749357.2960.12178983102289013201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0bdaa81eadca2cdb437b5dd239492106c61a14829f946da51ad2839def95ba
Date: Mon, 16 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773637493
