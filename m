Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F12CCC0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751764794; cv=none; b=WsoiUNwqhyAjAbQCnwM/wlPUy3FPbMR1SSYl6oVCQ8kz8IIjVwltWeDnIbDXwAgatkyDQCBhEZsXg54oK7oNJqNYLRpPs8Rar9+2X0H40pC9aA3WA5NOHcfSxpVgzyY2uCd5SUEbpJP6fFw2tLhJUiVcBtOjWH3A3K8BJxr/ufs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751764794; c=relaxed/simple;
	bh=cTMIOzm/mLBJ1HsefVN3MuiiKOY3TL2UUqsk37XaghQ=;
	h=To:Subject:From:Message-Id:Date; b=PSW7t2AL+vEcc2xFpjGj1VuV8YV5IMOZ1Ojws+2rXGPTtCj1q90b97Vg7Dj/P4DMwJ/vloCVsJRWN44oNd9dEqdnOJKL+KVRyexQ7Z6m+xOdIEpBUfyXAr4qoo8Q9LwQ/1GOTkMhQsHS190jjiCxSNCuKwCRpEjp4i/8l63ZTBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klc2k6z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klc2k6z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751764793;
	bh=cTMIOzm/mLBJ1HsefVN3MuiiKOY3TL2UUqsk37XaghQ=;
	h=To:Subject:From:Date:From;
	b=Klc2k6z6yp2F5SVdqKdWvhVrrpuLPmuyK9wPyTLOA9YEbigjak7pwnHU9DG12SIcP
	 9bqNrvuNzw+hivvVDr2hbGv/Md+c2Foi/9HhlEQtGmPZq/odYwic2+u5yWEwmSmX3N
	 EGia//lpI7IUhW3UyCYuNDJTOHe6JX4Sa05aMoLGB3EBJx2XmifiVbC9gMpQEtw0dd
	 VMH/+ngvZHp3aVfqJKQGNItBz6P0sVEgtc1wdw9OxXDi8iMYw+EdPMkip8K0GfO6Fa
	 XOUZkPcRALgoWK/NyUw3zZCDKq6vQPfhEVYpuOLgt2jQ7s3Jf7jq1suP5h4cIMHriF
	 YbIAZJSgdVwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F7C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176479357.4293.11291741551877423908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e122d843abb88a1269a257fd005434c1eb1d9be27dbee82dca2504644c0105e
Date: Sun, 06 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751764793
