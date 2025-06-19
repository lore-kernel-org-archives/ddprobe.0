Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B542253FC
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750376994; cv=none; b=YtvxEuhXCm9XjqQ0tDv65h3e9oMT3FEnN/gGcHWfivyyAMwYRfA7rsUOAimX9RoelPoHhow4IqBRw5ZMOjAiPqOt2n6Y0RmDGd8D+bFxlfAZYyv9iqU60MuGm4M/gf3vY+XFlH31GKeFrkjS6EfMTWqFgyQue5uXWgYZcb2/RiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750376994; c=relaxed/simple;
	bh=3Xh2zXinGxwxijGB6hWX7mkf6lSkM3Kjt7fdjWJrs/U=;
	h=To:Subject:From:Message-Id:Date; b=ONRSlu/Y1Q0s3dodDcaE4frX2RW3S0Iz13JngpoiIw1Do64CyFA+PrWdtNmdTy1jv8lzdtX2Q7wY9av56Z+nUZ6/Qq+1CbKqnEGvmp/KZ1W+ckHaD3w/UQiLgZEpAn6aXk2mOHWP1rfDSo+FKOC1lmpsf2aKh6ev9wD6iUEgHRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8+2e6Gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8+2e6Gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750376993;
	bh=3Xh2zXinGxwxijGB6hWX7mkf6lSkM3Kjt7fdjWJrs/U=;
	h=To:Subject:From:Date:From;
	b=j8+2e6Gqj9tOWjIYaCjuhu2xHb23xHgc6qY2q9u/ZPvYp2SUVjWHFWyTq2nt7YvgR
	 bD4SgGRZMYqdPX9i3zZxWRy03NAnWd8mLEOSnR95OhDOOUSFdS6ibr8988UE4vRgcI
	 z2/KfcMy7Y5peTcdR+kvE1Xaw3uGUewIMJrFBjWEV4PbjYB6vOqORLUw9C/tlI5SI0
	 n1Y93ekwtedcbKktHQnbkm6Se/POK3DpMr7CrWfUHdAPCClMwpA3RPZ8xTD7NWsA5Q
	 kZ+lO1GM2Twki3swRWuNWy/aijSNHBV8wnQZl7bmy5WaCY8o1JbJJJUor4upqoZTnE
	 Srz6prSv46vKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037699357.25639.9931969191216127224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc8bde1965fc1c90b40fbd508ad3be7a1167376ad0a91134c40ff7f9df8ed86
Date: Thu, 19 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750376993
