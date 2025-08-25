Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68A728031C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756148993; cv=none; b=ba0JWiX/mr1iGALVuisr3NBNuemfrEnWVhaPktQEwDg7XyNafM302r5e6TNOBbunz58rJgOMvCzpmIwzjY3PhXXqSQsVpI6TIBONBuUL9EYtQOuV1G4znpVSNnFrXXGeWnT9t+5eY9EprEGBocJbhQl5aN5dB8JWk71cR3czQrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756148993; c=relaxed/simple;
	bh=VGcu9Gk6PDw7mxUkgO8J+N4+0GrRPqWDEqvXSm45+6g=;
	h=To:Subject:From:Message-Id:Date; b=uuRYFUnp3s19hrCosJoTOF5L9/r/b3i6pm5Hzc2dnczxnIFhxJK5wZOXLmlieAzRIHdxmONQB2Z9s11vulsRYNokMfqXAxwqyTPImKIGmTLHc6CRqkY5NHHzXGO6ZDYfnKH/cHcx9C157Sakld02Su5KZOeXsRt3ohdVPHZ7QZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlf6kZSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlf6kZSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756148993;
	bh=VGcu9Gk6PDw7mxUkgO8J+N4+0GrRPqWDEqvXSm45+6g=;
	h=To:Subject:From:Date:From;
	b=dlf6kZSg8JduugkWqhiC66ycVzi0vYMJDwnGogb3Y7GrS6Ndtc7Zy9N/E68V5H9FR
	 PAsEU7M89htX1S1TefhXz+crD21H+P9aC0baxjw+uPSSRoJio2U660WHyr+04u7FZk
	 bvX/AGBORWRz/SoGjZ62mrIszIFdyh5kQvdA9n5HKRaA3Ab3fiF9k0P7X9NAQxc7Tq
	 EilpxTvR06mxc78/INEvFa1dbp4bvGu7/98Xv3FxRK92bMFJK1Xqih3CTawKMYYXts
	 xncMWVYZALWuCF1P8Q1p1fl/hfihHT0jLbXE4XvF3WcmW81viOH1ZKkpKOYcO1Va8i
	 ORYDSrXH+Xmfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F478CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614899357.681.18138225837207818774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403a058261ef7876cdd100a7a75d186038dea95dbd3bc94b1b511cca7d982574
Date: Mon, 25 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756148993
