Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF21C7B62
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740727734; cv=none; b=s647K2F1fxXELTtPL/ddURZfgOylg6MHJJuHe2d8pz3WQ320GlFdd8CMi0wmK+4c89kF+gNSuw85xjwTYszJQP3/rd0VJSaFi3AQMpXv9dTX8ey9URbfEj4Kz5dL1SbP6tcq/wFRw1gTHKL6/xzBjcxV1JjXkuPSjJHny/6ay3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740727734; c=relaxed/simple;
	bh=1IjXOmM85s2ImswXk8zld9D4X/gRTmS7UH4Dt3wrGjU=;
	h=To:Subject:From:Message-Id:Date; b=IWQZ0YQoB/7r1ZXoNKBMHDawkFYLRURod1t4FYCZuCxvG9cqeKYqjGfp7T3nTGzvMzSOWS2qgI7Q9SDcTfgiTeh2QwWOHIcdS3UuoZt/V3NyAobnwR7TeBeZDlBp5ympu+myZE5o7+FWdYqECZU/O2K92+iEaj4i4fW6/6yZznA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK/Creh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK/Creh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF09AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740727733;
	bh=1IjXOmM85s2ImswXk8zld9D4X/gRTmS7UH4Dt3wrGjU=;
	h=To:Subject:From:Date:From;
	b=JK/Creh+l3CHBf9pBoiTVKQVtKQeSjL+BKKqvbsvuqmIntv47zkImvIKDTdYwbs/w
	 iLxCXVCTnl/GOzAbiwGi2jsqSZMTBxcFxR1APU2XrgD74n5JeUXcT5BdnpaO/dYwb/
	 dp+5ZZXcbpeOtu6tPu9XQlxq2KxcSdiw4mMYCEzcDAUQslQA5s9+2X5H42nau+fHAj
	 SYEKfqMVT05Aedcd8sN8IOQju8lXldpQX5e1Pa9MY8EueDCh7EvVVutItTC4/9PfKf
	 6jYFDIiJTmVkkyKx7GZ0jM9mHZNQFIfhVDrMOBDMIzvWmlRWMGGoPO/ffrTq3qcDoh
	 zs6TqMevHoU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B222C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072773362.24935.4688861464609492123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5fae48aa563c7b24e4cfc0676981c08cadd4f16955607cb924148724bf8a2
Date: Fri, 28 Feb 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740727733
