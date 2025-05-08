Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B321DEFE9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746686394; cv=none; b=Q8SCjusN2cJ9gQm1dGKKMDkgiGd96q6do+UCwRfY2HRlOswjsWLX2xnLyi0AxGq2sMt9Kp2eDLpOMqO82xvRv4bbXG8UKig57flWN3vaZ5Nf2kVJWDfmrTaMcpvjBKAjuBHEa3qOh7qPTA/rZMH8d/NTXigr4rqpw0ZypdT/+TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746686394; c=relaxed/simple;
	bh=l6zMP3MuwMfhfxCcZePjb0EzWQdiOc72DxqV2YLU7Kc=;
	h=To:Subject:From:Message-Id:Date; b=VLCTNuMC1OauEyzdpjLD0ps8BZ0KI7bfUVqwLrJdjpW2Q1w+LUHJnc/fqxtSwt2rJPoCeYaVlQrFh68bXBryxzhH/+gJzc5yRRlJRHsD1xlgHh9NF1oRxJYY5JHcrVkTVRvvqW8aydlqluHDH0UYxISp6LaYyKPsozNcye0MAjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s838Xlor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s838Xlor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A9C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746686393;
	bh=l6zMP3MuwMfhfxCcZePjb0EzWQdiOc72DxqV2YLU7Kc=;
	h=To:Subject:From:Date:From;
	b=s838XlornssM6F0+2MQlpv1TiuY0wtwWgMpZSR+Vhjj5yS1XSDLjFYxMLL6XVJpPT
	 OSfkeZRvVY30H31guYHygDqIOXa089AOsEMttNEnvfEipx9yCOywL+lu72MYKv8RO2
	 7JOBepZ4Kp7pvyIlDFdqtmyGccoI97Io767aOSwSY00mtDGcOIE+X1i8BLdyoEq4if
	 vnnBXZlp1JuosyR99RfvS9qupfnA/x21kmWESWayBcw7rY9ZnwWYlPX7uqMSOPuN0Z
	 roJo7Hsi7/0J0M3daB5CRaAZ6umLoNXoigH5U1SXr9Uha310oGN0kSmnHVOIHqCuuO
	 7NATJwn+dU6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E5C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668639357.27322.5460099179750270628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed620a05f1e5614e21fc605dd216c52f072bc19d52de831cdcb0145c98eedba6
Date: Thu, 08 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746686393
