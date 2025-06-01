Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364222BCF5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748767794; cv=none; b=UOPV2e6inFEyCcu0JzXO+Wt7JjXXUMgIukcMTIU3zpH0Oldwm7fiI2FCcjWskmM/oKiVL7ofAILx1oxuORHgtak/cHAd4LMSYzWigqTsHFxMsNfvZIYjmdwEkmFp/doSvfRbtOkE3VqcY3hYfcCjI0vXMm3QIk0aOCQbOc8uDnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748767794; c=relaxed/simple;
	bh=JEAb0nE4/NFmOK7yiWC9pLd5wlTryJIDggYojbNKpCg=;
	h=To:Subject:From:Message-Id:Date; b=lT22TYcWY962DvgBYrN2Of8j+Cdj8y3r7S/sd/L/ZR6Jc2snzjVI6kwBT2tuZSr2BoJEL2hXnfkdmN+z2lXby9ENvsPZbTC1xIoD3DVnBE56MQvkBvJhFIQwk0NvuOhvsdsYrClQY0dMGd1fc7OJh6dx6GHh1ufejVnqjy8Ry8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8oFjSs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8oFjSs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748767793;
	bh=JEAb0nE4/NFmOK7yiWC9pLd5wlTryJIDggYojbNKpCg=;
	h=To:Subject:From:Date:From;
	b=p8oFjSs24HEHFnzDp21FxNc2kWA+SOCueZKNWk/T9mFBzoMmpLmCHTxKu9N/7BpbC
	 qaMFfu4Avr6P2oiFINBJg9BA4s3krLyyw+k6DnWSInjG4CT0H208OiVKJEHoBzOU9t
	 ZRAGZfSQI1XY2TtX7AddbnNKMbjH2ac8vDrF6NNDhcyuQe3rtAE84VhTBU0r/nug4/
	 NDs0EdO+Xrpjq4iHMFX7T+lGbM4PaCyC7Qr7u+pDCfkvlFZGVFCe5TPPdVZUtyYQKi
	 1yEY25DNlc7370db9Jl5UBKA7NsaLt4AP+nykPgod/s0g6kr8zDekwmw34YU2GEidf
	 IA1scsf+k6aew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C34C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876779357.19188.17285318152395431848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2909daaa4a5f36a8c950e9b4fbf85d5c3d68df2bfe627e9b58e4764501d74266
Date: Sun, 01 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748767793
