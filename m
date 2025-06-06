Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B251DB122
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749248995; cv=none; b=uB/gPTXinpFaK30m8HYPiLp980iflzoJtH0mIwMLCE/+kJIcq1JZljX+JMfqXvGMhFC/hQGZ5ACSZoX42TdkAPt2CyqY1/z6qWT5zC+RxlVGDHJKTaifkpp/bIcQCZSrjVRi4n9r865xRhcuGjLgint7imnLwuPoN8ma8TCUUWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749248995; c=relaxed/simple;
	bh=Pq7hfxxYmZVsjpTebN0h5ZKJwRvUAWSxNpj7EVPHrqQ=;
	h=To:Subject:From:Message-Id:Date; b=TPzDuyOxcYpuk+S6PtVRkHLNbe4iuRyxKH7dU/ipc8+8YAwIhBPtcQSVb76lHFX1YQex85mKnszKDY5/ucUnM8upeRQ6iGKosk4vOaaUxQcCxb6o2Ek0jV15NLxTVqL9UHDtIVNlWcUBS90MjtYYr+cgXfR+mDp+Y1UZjEsKTXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3zWsKEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3zWsKEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5165C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749248993;
	bh=Pq7hfxxYmZVsjpTebN0h5ZKJwRvUAWSxNpj7EVPHrqQ=;
	h=To:Subject:From:Date:From;
	b=t3zWsKEoHVQnUfGTbVis+COlHeErCVVoXyvXpE27mqqfioojKLyQmWEe7NrRmBdrt
	 jDk+zbn0QSVztBl0lHdlTIcjSu/pXQizajSjE+Sz9O1Vb2q8og5tlkHrCIGA3H8EED
	 8cKaP8PLpmf6u7XJGB/AVYwPyDYg8Fc2v/r52eD1aJQWWapOYWpv0diIaqTPSSvyU9
	 8BRR/Nz6vHDuqQ547fFlrE6QUqbMXFM/e3ChoTGf30X4Ef6YsrIpLCE+eJWLQOtSYi
	 5t2lff6G72eFl38aLHOqE565ENf/ps8FC0lPrEmX3rUzQXJuKkZ0wP6mPkZiLp+RlU
	 uohO6qhxqUp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BABC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924899358.19865.12229218103602469933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6899bdbc1fcdb0ecb9f74ad691b252287025c35c96a66916de228bb064782209
Date: Fri, 06 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749248993
