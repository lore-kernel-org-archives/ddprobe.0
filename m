Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87684539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647685284;
	h=To:Subject:From:Message-Id:Date;
	bh=uGD4YienEaCMuxUwmEr6ogXYPKRx0KkRIwpbE4VaVoo=;
	b=PdX2muhYGP7GkU/8IErcrCj8GmMICHLhWa2n5bzXuRkHVx3n2vRLlu7f9vtMB/ia
	W2fL7k9swMm9ltVwUaV2b8E1kM+tTduLC1lwWagBysQQJ+xdBUaBkVBid8Phw63CrLS
	Xfoyk70vIWmf3g+f3pGIMEbH1dH6lyxLP+PgpNRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647685284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGD4YienEaCMuxUwmEr6ogXYPKRx0KkRIwpbE4VaVoo=;
	b=OX/gjpfXHtutJtlApUTI4ZsNR3zRJ3iG9w/nl4AwXpBBaD4EgpJ6JKUjpnqOTMbZ
	wgNsuut+TKRGTABTTt1XDOUYn5k1BRJQ7C7ZqaYQXDuXvBUpU1vx7+vo/PMJ/mrntHI
	L+/DDzJ9Jiyn6f17YXe02iCaw89jgSsybZK4r10c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1b2337c-55f2902d-804b-48df-9337-e8fbfef59eb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7badff39fcb0270ec0fa8a5f924128baeecf85c196a11a1c39fe7453139423f
Date: Sat, 19 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647685284
