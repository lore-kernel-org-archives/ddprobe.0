Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A2F3277B7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755705594; cv=none; b=Qxu8z3hfmxSWd64DkT806qRx8ES7yP8iV3MQn6OlQ0keQtDAb3k/y1uYWjNy6OwV5KHIpTzJemykdux/OTuwFsir2+YXRx3V+wpyrydE+Fop3nebp/s5Fqd6jBNaqYa1bNurx8b13Sjqn6D4NeY6/j4RN7GqXzGGxFCr1cFoI7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755705594; c=relaxed/simple;
	bh=8EUmmC9+EzHNFXLZP/uXYDve/JBxt/H4URc/e9Two8o=;
	h=To:Subject:From:Message-Id:Date; b=M29ebwN1su4x8iWPpLvxTW/B6Ml2wNIeNTe7acvOVdOMPvXWnYCROT7oJuQ1giPKfZeaMy5GaEfZSMQb5xdO6qjfWMLEdyRXe8lUrKVI9EWCgeW2/Qwwk/8OLcZuHUhB/7bOp8m6XPXNyo4p2sJHUhAMdDHtAC8F4Wxu+tlM/Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzqV3KjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzqV3KjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A60C116B1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755705593;
	bh=8EUmmC9+EzHNFXLZP/uXYDve/JBxt/H4URc/e9Two8o=;
	h=To:Subject:From:Date:From;
	b=GzqV3KjYjmoMCX42Y5JnV06jTIenf8hoW5FXqNfcBsuf5UGT9+IrcNdijAXPkIMG0
	 LiD/z7GDc6/JDz5oI3xwPy1XirY17IDJnei9C1pIz/97geJkDhCKH2Qs9TB1kEUlSc
	 gsnOtXxdoHfhX380BJSiHqu5rwigoeSjgk7PlQ3AJ1wEDLl5Yo157w4LKSDlbSEngs
	 Kr9C0GJbplNNb5K8WOdklcyYbtTcBm5z21j55gG0vcxVlE6No8dFQQEjHgy9Fc20+3
	 d23BH/UBXhciT8VqKZdBX4yElkI1PFJap36sFR16JMpno6t7GIwLhbqeq4fRl/6ZNa
	 Ezg/StpWboOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033CCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570559358.32367.1917113296000910283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d501042877c34bee71ee62794feef1ce1289ab707436466ee4928c036452444
Date: Wed, 20 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755705593
