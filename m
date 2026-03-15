Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0840F37B02B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773607494; cv=none; b=JGnDr9lubZktiqMxGeMM14RIm2XR7vRfLotX/ninmp7U1jCLLeoA9hpmQJYfRzqatqzwLYQdAdC/bNzjmDNPrGyIGqptLI9xtY2+kNvOAoSunABEWaOGCaOOr0vVNZZpwuuH0Ss9OYIbD3Py1PjzqFZCuBzZqYNOUo1wR/a3yWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773607494; c=relaxed/simple;
	bh=YNoBdqrwXz8QAV+0YHjwPOF7YTeTuooIFml3SzBJA7E=;
	h=To:Subject:From:Message-Id:Date; b=sEJ2g7no0+6rnNnNwPDE70rB38GyGVNrkVm1RbAlCd+bW3yGu03Frcq7l9eC2X/ajhWdhkv5rSyBtXTL39lnl6b3nQ6WKtqMUDzxVUZhvauTAowBnquLiR/u+ye/BC2AMsYnXWle2DBgGKWahDqW+vTcjaTZ6EWs61ke16lBFx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6mq8Pla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6mq8Pla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1BC2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773607493;
	bh=YNoBdqrwXz8QAV+0YHjwPOF7YTeTuooIFml3SzBJA7E=;
	h=To:Subject:From:Date:From;
	b=l6mq8Plasul1jAw4vuYI4QJbl6w+7zyBidlaZiDA83pLLbZ5FsMbZq8LNN2am1A9v
	 IvEhVD9zyTTqkiYcELWsAl3zNHgwz8bhJnhfrOudY/M4D2wQ1cSlaaeXOc65uvekkx
	 xP5lqlZXQ4CUg7Adp97pCe3lms9Osrnx0CZrUYJGQ5bEDsLPTjdA0QK2UkBhdLWEqz
	 xkigCYLH+LpIBrI8yvFUrfgAfYd+FaD3QNG6aGrovvXj9ah5lYX3/7TUsySOOuz8Sm
	 F62d4O3ufm9lgUFSnn1cJWLZJFgUtUfnBO7ATcwA8LzrmIaa3jI6OmdDH2k6qrYgA8
	 Mm61aUTPZAOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B2F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360749359.26069.12673700095781511172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd28ceee70b600e28cf8b3f474b5da522bc55ab535e291493a543279ccb10923
Date: Sun, 15 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773607493
