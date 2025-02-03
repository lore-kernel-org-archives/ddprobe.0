Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DC1FECDF
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738587955; cv=none; b=Rw4Ufi43BP0o8wC+mze6W93JLlIY9xhjZcVFj5Ns0SB9bNhTOLAlwYcZy3HI1QwZHqP/l9zBkp2WXi2j62PjnhAkBhGUSvbYR3lI+uZ9kdqTevCU1MWBNcUOyJH4ycKjzNMWuhNaZKGFQQQLWFesJddBkQ0n4ONkN8Y60qHTZNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738587955; c=relaxed/simple;
	bh=9RzxtnNdts0AicDn0R2mnbYfM0Hxvf9sggfNSK+oOLQ=;
	h=To:Subject:From:Message-Id:Date; b=HfUJ35tF6cePsXY6BM4qAlCbFhrQWVJuWGePdN+9UyyLbS197o7XwytRlMLRmJ0U6Lq8PGgWEx6zqjJeqvqXCoWsF361VmZOHkqkb5P34aHaFixQDxsKtmzOu4RuUFROqd5GPn+1lkUkwIXtR1WEdCR7nVikoidLLx3WXj+KMYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkx2faw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkx2faw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72B4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738587953;
	bh=9RzxtnNdts0AicDn0R2mnbYfM0Hxvf9sggfNSK+oOLQ=;
	h=To:Subject:From:Date:From;
	b=Zkx2faw8bJra8dCgEv6iKsOlH4PM+bB4981mv/GC50nUeqd3QQkFf2zSFp00YTCIL
	 We99bXNFVMsXKhGoo+NVyT8KUE54UEV2D3gof41XhrzaPBN34JOIsXH+q+Q+e5tyNs
	 AKXTg8PRp4+RPj5oC+WOaX1wd6P8GUJS6t2IInpZFRiaTmnnKHjAfZDR63+iXF/uoR
	 Ca1WqBTNzceJK8mQN3qvWK44F4gg7J33hxA6MS4b4wJnVkokjbPzKBnpbOzbDolaOl
	 Yp7hbGY3a5RVE1WRoJKBK9CPDRwh+KrHU3NZVW1jY9ru7PMuy7igQsU9lNm9yrbBIr
	 fR45H7edRkFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CB3C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858795367.24579.10276533809218932460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744fd34238602f5ddaa1efbf65b428740b656539706407b129052f50977e1676
Date: Mon, 03 Feb 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738587953
