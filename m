Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D0307498
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750832394; cv=none; b=ipuhUHmpEprpPvCXE19N5MSgDtfHwda2SW+15qhouTi7uwZPi/UqLJbQYPot2ifEllVPxEiJALVeYiUwG6JqTnGUNP9eZRuNC2F1RAGKS/0yS+EiGSZ//MYcliKy7SqgS/FHEEaQVQ+l62e4QNpz9Omrm2+dkYwweMgAClj+uYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750832394; c=relaxed/simple;
	bh=HWNUUbYS3y0+oPSsrEiVo60jCjCERynO7Sjpf2cf2Gk=;
	h=To:Subject:From:Message-Id:Date; b=XA3LE2KPQVPzsARYyUkcPt5okBEEy3uTt/dqqpTjP7akO7LJoIgbFngmTv/QMRgOrLzJX9GKPouNRZhaMK1JzK9DvTGDF3fNe8gzLMXyClNYHat6X7ZBTrZxTZZi1kTWjhxRXFvHUxzJv2uv7spTVQRn67HcU3mXkFSyM4ZWKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlmGv8wK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlmGv8wK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD0C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750832393;
	bh=HWNUUbYS3y0+oPSsrEiVo60jCjCERynO7Sjpf2cf2Gk=;
	h=To:Subject:From:Date:From;
	b=AlmGv8wKqhd8P1RrcRnPhU4laGNXykTooM+1lkRawf2syi714i7tr6jqmsnZ7Yakj
	 8ElPkJAv7GazjAlUDfIvMNBUk5YVqpykMlJMZFJphoaaimViQP6g9BgVto+kJz1OWK
	 mxZDLn8zmJ5Jk2CZWvcrlXWHDNuvw1eE7IxAanvc8PpgtKn3DnHTfKb9Yg2sYlTmaZ
	 +kq/MADn7051MLRyP/Cv+/LJGL4VIWAZTfP2qmmjihD5cwaXyI+HZRqh5Y5D6HfKvv
	 WhYd5P3WyTWfvuEIIdhN+njfvMrV0S9Gr/CzthGTM7SAEAne3Z0AmVlR57/zZ4QzJN
	 W3hdvzgAuk/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A84C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083239357.21223.15493540841866465318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e21148a1874cd227c9d3e849fac3276570b503d59bd46812a280d1fad57e7cb
Date: Wed, 25 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750832393
