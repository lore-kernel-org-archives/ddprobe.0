Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865F85583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645303284;
	h=To:Subject:From:Message-Id:Date;
	bh=Sqb5VvUm078C1WkGQ2Udoj7TpjjMFO/xqyAjMnt3Z78=;
	b=ZaPgAx7kQbYsSOJXT3hOSzVtLM6rpnChHkfZHI+HjGdzzOXnr1CiOzDNF+KzCXtV
	ZudJTMVpv3rq9VKW5zcD5MPBDBYJpwGEJUkiKPTymts0+BLNxNpn3jkECUaPUcp9iUd
	Qe98nEcOwZNLX09cMormVnpuyl3O8lZeaXnBBhl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645303284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sqb5VvUm078C1WkGQ2Udoj7TpjjMFO/xqyAjMnt3Z78=;
	b=NWquxjpB/9teRPQHwmtvk3b0Y3G+tMkUv//fVfbjM/sVtQkQPCNctYnWaEX84oi8
	qfwclP2dMpZlR/2v/s1k/GqbFLVY9GLpDX+poqs7Ul0dGaLML7sPqO9Nd/oFJSOQy3R
	0NitWl88I0hg4Yt1tiVofNZLn5qOkhX8QxvmulVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13b7c411-f12f8217-729e-439c-b0a0-4132c5477d6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8693d6e778f394f4a141040760090ca9d692600aff3cbe376415ef2e7ba672b3
Date: Sat, 19 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645303284
