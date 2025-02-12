Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345F91FF1DF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739396934; cv=none; b=SxAPUQ6tgkTlm32FSBzEUbLay4hBQpuxhcolEQ6ESJnJdL5bDl8P8imUtmW/0er6/tkkhhHRSZpiH5KTqZQU/ESkrHRzeIM1UF/YZkojooXRQSEBG7OQidhnW1/5F9VV3P68sn698CcUhpfD3eFom4IVpDFW4mgHFV6ELASZy6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739396934; c=relaxed/simple;
	bh=8QviXlYVpDFOYVZdXZu0Ir7O9HdffUEHVzB7wA1tcMg=;
	h=To:Subject:From:Message-Id:Date; b=R3S8J8re6MzlKeJ+bYOQHJckfiPbr/EJN6sc2obQt7RixOya6DfClLlQ1hDjuLcLJnO5TyES9A2lZeTHo0OFPQRHoPSWbvoJP0e5k0RNzcYSgkuXZ/uiYIeZxCzSDLUh+DDAuluhBAg3s5FaA7yxILiNEFLuAj7GsJe6rRpIj44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzrIESvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzrIESvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A69C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739396933;
	bh=8QviXlYVpDFOYVZdXZu0Ir7O9HdffUEHVzB7wA1tcMg=;
	h=To:Subject:From:Date:From;
	b=PzrIESvRbtJDCg8BYYP2U6kySd9uy8bpZTYQU9YUZifQx2FX4i1qWCUp/sWAo3nGm
	 +EKPTl0FyCOg4061PaKxZHHY6z7+L1A3hl7VvwOmO17zYDf4KzVT5rAswiVwH1yN0Q
	 ScAp29xv3MW/kW4QgrIOX0TdS7zTun4Nulk3AdQykaITEV1iJZAlaWJBKm05kcUa23
	 3aJa+V3Z+6EH6x3gucq0pe5hger6IvgfvKV8mqYCviX13HSuwk+/yMh0xoCrDWc43m
	 +gk3fgK05npSr/VipgAXAdsWRtcQK6VU2JOaHECz4L6m8z3sKOCLzHnNNeecBg4IjO
	 9YXSgY8KJnyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B1DC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939693360.13021.2473784696046656338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c34d8ca15fd14de016158533a382647e71ecf9eac35834ab657de31279bcd9e
Date: Wed, 12 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739396933
