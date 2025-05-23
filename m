Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B6D146D53
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748033994; cv=none; b=GHtBQv3O3ouZIOGBAOWlOkMjx+ka+sogJd6tticTHCKWXuUs6lZHNqHo0NPfvE9fytw/nRobCLu/Vsa1DyA/b24krYrp8DoGXDg+f0LXmMbbx+Jqhp2kFa8XH3x0SkPtjzd4HyV4i0e9jEMq8WT22iqIOSlBiMFHkuMIC2AEM8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748033994; c=relaxed/simple;
	bh=R5Xy3lbLhS7bwukUbpMFA7REEhDKOshA7rOuLN/1aSs=;
	h=To:Subject:From:Message-Id:Date; b=ZhexzH5DKAX1lWeEvczY9CcfbUEg2WDy5eNBBSpKMQhpw+QFZMKXm7Xc9O0lG36mrU91KrRTCy0RXxI/SL2wrQYtLraJwOVQOJmoTDASLwrV9Q6rfm6tbSN6j3bQ94cWGSdI1Yw89mKKwWcf2yBUgggZbX/EFfyIVIXV51O4gss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig0WsGuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig0WsGuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F59C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748033993;
	bh=R5Xy3lbLhS7bwukUbpMFA7REEhDKOshA7rOuLN/1aSs=;
	h=To:Subject:From:Date:From;
	b=Ig0WsGuqabNBzPGtluU76V85cGKgt25UnHlnqNlFFT0NFkOAZ4bqJ88+xQ7GTZl3u
	 /qpareeupZ+AJXCdfR7WDN0YVcSMUbGVgxbKMp+d9QFxKuDuLg81KsaPFXRbw3SfpZ
	 23aehFUTf/UnN96SpNAznIu6hh30FF2X3PiG3h9VBEl1ASbAzdA+jl5dfDDNhVLH01
	 ggFD5Rr5M/UDjuIbkBl7QOtoPrg5DnH7vfWbA4RCxsp/+kKaZ/PPEps0n/4ATyYrmD
	 DOzc1sL6/GBsv87IIDbhvL8uJcBhvcgdwbwilQGEA9iA9gM9QY9v44i+zzGZphRobn
	 n6k4Mp4gEa2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEDC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803399357.14599.16983876071201454184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e6490a781a053cc590bdf91bd05374b6fdd8aff1f4b92002bce55575603565
Date: Fri, 23 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748033993
