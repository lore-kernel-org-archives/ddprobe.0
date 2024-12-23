Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29636158DD9
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936954; cv=none; b=s5RMuq3Za/vBD6xdOsAckisdGVM3f+aUb8Xw2vyPkMdBNiMvGB6vml0g6YduaR5bArDvuoWdg4GubHX9Z64/THjNiGwmAWnvuuw54W2dCgp4pNNULSR4v3sRkvQfbO30r3u6xlYkD6aDLNEJ/u984SysAg/PL4PN/tQn7Rf0NyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936954; c=relaxed/simple;
	bh=jtYQyH1O5JpeXvSI2vLp9H3UDhMD/y6LPgH29gBOMHc=;
	h=To:Subject:From:Message-Id:Date; b=uYOBJmeUsAK7b9Oq4VXHdGegKkSgJrmFcMshf2/4j/pXdJem+kJIQPVUHrX2pXOQHvz+ABetxj4cy+yAC5lVCpbM6ar2+1tcQnfuiDknUNctlTuV7o1WQQdxYKj2hVuD3cDAg6ZrBccSNx66rcg10W1siFJa8UiYADVswMYVKYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQTUQAji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQTUQAji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B405BC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734936953;
	bh=jtYQyH1O5JpeXvSI2vLp9H3UDhMD/y6LPgH29gBOMHc=;
	h=To:Subject:From:Date:From;
	b=gQTUQAjixd3EPNiefO+Ol40xxy6HJ+v99XNaa52SfQPjsz8wQPBRABp6Y0V+9YLG9
	 43PoXB9PusWP/EVsmc5QIId2yTDEJP71e+bCU5v7NFdrSjg3ySIuWNEWArg5qm/qwS
	 Qwmrzfa8nEhgU2QvLT3z7oQ2dNkOva03hZALKt/ftO1PwYJscOWX26XbfiqKDF+ANo
	 51WWlWt5mBvudKmwqJl4reazjN2OVYqv7f0wZunj3i/PMjye9tDR3/HdwSJ8aYrGvf
	 nc6tGme4L8KSGhoNFEOsdShzhfc7AyNUAuEW40C8zAgQGBZ8SAkwh3ohsHUw264H1w
	 Ym/UBbW/AM4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D000E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493695361.3823.14945843918804312772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdefe885272382360b4f9dc55b4090dd46660b795d5dd5fd31abfac25cfbed1
Date: Mon, 23 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734936953
