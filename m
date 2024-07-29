Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47361157E6C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722278754; cv=none; b=p0uRnGCUZlL/P17p59JnPmgIiMWhx30jknWnCU44rfjjIAl+xrXS8OwjOLzIJTkL9gGiKkbFsCgsXQkLNTrZTsSCj9PAQ+XmxIbW+1KnCd9S6aYXnMtbXiew4omnuj0T9GtVnIqvSzcq/gz3FVcvpeAaB9kW0wkag02vUgN7I5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722278754; c=relaxed/simple;
	bh=iwaly+bIkh/nD51JswigUaKIRnsBGSJDAI8MCTxjZ5o=;
	h=To:Subject:From:Message-Id:Date; b=Jg4xJZn8tibMtk5Q4xb1jMZyngTudNOQNJWOuyXMVVEDLT40s9YTGXAV+/qy9cyvKX1jYE4J2qhC1ROoxcg6sv3OJlHkZSkanQSsIzj5m83kNQA3/HzkhibL+z9CvqC8lT+OcYMiChX4AFiw6fdK/0WFxWlG8wF+S+lm/jM6u4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0Acrywv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0Acrywv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B922FC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722278753;
	bh=iwaly+bIkh/nD51JswigUaKIRnsBGSJDAI8MCTxjZ5o=;
	h=To:Subject:From:Date:From;
	b=Z0AcrywvozbJYJ/kWtjeWaDWkYUZcLs/BXXclZU2h3uBOaYiULf4NFXMiTVO8mLkm
	 DY3bSAWlnKqa3LRaqmrKpUzJZiEasiEEuCCMe3ujIQouKRqLNlJAOlFUHsOYNkY0f7
	 GZqU8gpyuHOH1BNiT3Pu3+Y4K24g29Lyw7N9yR/uDGQf/Sc2PJsP9T/Iv1ABMBULUK
	 eRAk55qCJomley4ofwNxA2UK6ElgHV/FQn1ZyOWzGFDBh6gzgKIzjjEVxjcQQh3jyH
	 tJia6SBl2f1tHuJPJuqHE73KQbiQVTE8NbAquX0ZEbP2aCXnJ4aXnDOcLpgyQ7qwFY
	 LRqOWb6Rk94Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EBBC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227875364.7798.431402697597715189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90813d82d76ccd8b9b8f3b944f944d5d6bd4b6b7066843ca7838c49b43740a99
Date: Mon, 29 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722278753
