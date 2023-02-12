Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E88A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 12:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70EAC4339B
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676205245;
	bh=/tgoCFekMFLpjU/7mxBxM3/q5M/C7sYPufk1s0eIYt8=;
	h=To:Subject:From:Date:From;
	b=Rhz9o9N8rYQ4MM/s5h3/h1/3Q4o60Dy6dhcIoj7BC57Erz/LBVgyLzn7pPXKsplJ8
	 KOuhV+lp2L6nbd6oBmdsQzABy/hANOv05J7Ui+Dfkus/GsELgFezJODpmatRzkXLuL
	 Jcnavm6E8093RFPjPahHpQLOixCW/zyErmpCByOlEkIg4E7amwgiQQaWlic8bBZh0P
	 ofh1SQ20xVHgJOLB58Z0aEprMpsG76UGNqVeG9U/2rn+tklbIONfWkQACZ+G/1KRj4
	 +19mShnz37PRdcZT9hJKw9hqdTyutQz0eP9plvvtLV+d96SKgv6w2/KI1RK0UZ6PXt
	 Q2Y7NxH7TEUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3C0C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 12:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167620524575.10687.746618690821899063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b1e37c4a029e36d7741363db6e7daf529776e7defb185cc8182fd6c4dc9049
Date: Sun, 12 Feb 2023 12:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676205245
