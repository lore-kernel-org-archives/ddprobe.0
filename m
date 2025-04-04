Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBC3186E40
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743748194; cv=none; b=GbXdxcgw8QjsH4SDGw0V2lhtRv+CvOOuYwtxFK9ejgEnhm88qoibiq4Ycr1unEdOVmDtLm+dN54j0kNL6JBzM5o4DU3sJecx5EXRw4IIeF0q43H3yaE9kHBN7RaZcTPkD31zOoUSVJ1RycLBVt09eoFNax95BHJ5ikZ44/e3Us0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743748194; c=relaxed/simple;
	bh=jOM2Pu8KJuzHJEUUqCMEgurunp3C2/mFWAjl2sY1n5A=;
	h=To:Subject:From:Message-Id:Date; b=XunjMkLmolCArtYXatViPWQiBi8IX8fUAO6RrDN4wAr8sEhGW0yW5r4ea9SRFJqeW0Bh8fA/XFX3lvMpsXL8KptXI3BxWMtjMQGDy+u36QlDKZdLiJx+BdPH5dBQGLolyFWC9LGBWOHyhxA5IDfNuvglKvSQcPtAgzG1Q3X1xoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty5Xij7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty5Xij7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743748193;
	bh=jOM2Pu8KJuzHJEUUqCMEgurunp3C2/mFWAjl2sY1n5A=;
	h=To:Subject:From:Date:From;
	b=Ty5Xij7OHAh84BFzXD3znlL1GGgQKf6Jmnbhi7JUgGuNd8iJ7HW5gCTgT92SpWNOd
	 6/eY6o5ck0NBMLrtSVilZtpvDvwjT9zHoX6wanc5KeroAVObbE1a1tltUiQgl5AdXb
	 3pOCZtWpvBG2P20S0WnE8B7SRxKOt5CNY/rZE6yP5pZiaB788ElW5fJa69N62h5X4w
	 3HKJ2oOl/9esDI6C/e+bBwLjK7x3cnkCYELX92vjsBCZ9nvhKMwSTkeED9UxUWq7U/
	 w182bXQ3AHAj6T7fVfr2+63wYE3FyhW3cEudV1PFiIplm6fxvcQhvm6aFtdbfuNYTi
	 sKkqbpbKFDJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91700C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374819358.23162.6731904524199547137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40382fdc8ee44322f83d703eab181372b7fb13cd5430dbd0dc82a0246cbd87a
Date: Fri, 04 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743748193
