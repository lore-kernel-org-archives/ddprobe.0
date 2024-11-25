Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3E1B392F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732554954; cv=none; b=N+veYrkXV//WdpPu2+jIoKFZ9MwpI947uWWevUcL+2MwKEyg/gBVX9HASBVHZKILw+xU9n/vU06m51Paz0S/Tkyb+Hub7miI8dSpAXB+cgZ8pZDOrx8JygCCoMaul8YS0lTJmD99q4pwEeudwV1dsSzqGdmTCEfBhHt5nU2XgiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732554954; c=relaxed/simple;
	bh=4eZZYdcxdan1cDaRNMB9rCVk45K/t7FTOiZHjwXsm7I=;
	h=To:Subject:From:Message-Id:Date; b=BbQWperMRFNmkSvpOM7cN9LV7n82v+26N+tcYEWZSPKvQjh2VHI87gM77gk0/9SIFWv0SYlpkZ5h3vBqnVkdfrDtvk/nRlzZOZtlBoS4kF1xEz7Jy6eZ5uKDdlDli6zPA9a9xKrcJa/OI/u9f7/Kl1eP3KJIg674KUQl/MHzoRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2AWWXnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2AWWXnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CA9C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732554953;
	bh=4eZZYdcxdan1cDaRNMB9rCVk45K/t7FTOiZHjwXsm7I=;
	h=To:Subject:From:Date:From;
	b=M2AWWXnTzjxRUJxalo7NSzqXOJcIs9fOfuwXtyX6IjDaRK5wke8ft5mWYTVNz1ny4
	 AzRp9wjMgCKqYUKfeaay9i8pOK2ZfzYadqFZfuJHs8eOANym0dbcEOj4AY6FUeCLGT
	 yXKutJZLOv1DRAwUEYeyVIRE4wqu8hnAAYv0sAgFh0Gb7189SEQwj1Ely8XKSx+naE
	 Ynvti5EtTXVCqvUd25c028J01ey9ZLcqbBOiVEpIdT/khA4/sx0Wzh6ADitmLzg6kr
	 9Ytt14wjg/5024OhoV2dwxhmhqji3/V7ZQ0rMTFNBeaUtwx+0RAz5YLW7WK608jTWH
	 AN6EnGlPQO4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF31D58D69
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255495361.24910.18382350398836582498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03643d582e5fdd17fcc0e15aa9fb0d5dfabcb3046f0a3f31ccad040c3a6ca12
Date: Mon, 25 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732554953
