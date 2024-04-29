Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5377E839FD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714418543; cv=none; b=F9yEMV5jkdCl3gVN8fJG1boSbJge0kuutryB+rmbDzOHrxhKSLWLg374XWzlz1SQ9FB2Q+Q4MoM0+PaycNDgb29DhndA1nnHfS/7Waa5wWRHBoYmw7TGmx2rZ5EzLqfbN8dLns91qxC3WjaBSQp6v/gfQtJSRcre70LBOrNngaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714418543; c=relaxed/simple;
	bh=Rgzoqz5fsHtTs6wqyNXYXvlgVr84KWqmNaYnTYeYc+8=;
	h=To:Subject:From:Message-Id:Date; b=L0uETNftzDKMSiLDBw/gpN3Mg0wi4mbUDISDKx7206WYFb0q4EbI6btlQsrX2LUwldCtHVVYwqCOg2UBNRiYxd0L73i+3XKghTLoiEapR3AjrpigcsDWHjDNJAPfQDVA244nWt9Y+o3A0XYRlXsvqhvTkEKIUz2rWPMPQ48A7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9ZL+MnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9ZL+MnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2091C4AF14
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714418542;
	bh=Rgzoqz5fsHtTs6wqyNXYXvlgVr84KWqmNaYnTYeYc+8=;
	h=To:Subject:From:Date:From;
	b=Y9ZL+MnKTnZa8GEHBqJqj1SoRCnInHLw3OWlVYV1xaodu5jkcZrXTyacwYjdzbkCs
	 SApZ1su8H17lYJ46haQ6OfqWvVu3gbMywbyNcOGIx/lPl6CfXW3lrKHHG/pYilzHTP
	 /oJEIBVisOo7ky0EhQhbOhA7+xLbcBwNzRY/9DontF9jUsFEbK2TqTY8ZhaRtkpXhC
	 9y4LedUMoGqKITmfwdOWigMXrbIZIX/D6e3fGTn2k8IUTeiq9OGODROgwQeP78wu9B
	 1WBHeqIagKGpa6+CovvEiM+jFxN7F+xSrDiKlot3jtn9aRSpgR7p5DOyrCk8xSuTEf
	 zNYCFk0YX9l6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6C0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441854277.24667.11808675082913750342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f7764ce228ef7f220f1323480a61cca992abd2574ae4248afcd68bec93abb4
Date: Mon, 29 Apr 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714418542
