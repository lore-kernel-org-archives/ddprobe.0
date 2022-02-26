Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB22E7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645905085;
	h=To:Subject:From:Message-Id:Date;
	bh=4Csnwm3c5GfZB4IzyO9b/gcJ3q3LRird2m6QOVvEYLE=;
	b=gxdrJQSNKJgtXASJDVjr0K7eKspedTd5/jtiG+pin99BYPSBtGtmSYeZlE4RmRKL
	JHKjKOkqtLXuF54szurxHetAyf2EbBwoNFE/+ntBEkgJrk+l/Mg1KNsS1zy15UU6pwe
	aqKO1O381Sa6MwNOJEXP4n+cs6aKh09Rf8VOz1Y8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645905085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Csnwm3c5GfZB4IzyO9b/gcJ3q3LRird2m6QOVvEYLE=;
	b=YjE7SQ/eHzZXbmxzH7aOVgovOOsaQX2iO8A3fWPT8Ed85RA+75gc9vKIeI4mrSZU
	BYjlMaxXkQF/HzIrpUvY90DKQ7A7cglu0OG3Qy4W4zGWVgvZStdq3mB4Almzrr+0eLQ
	lhRL1JN7vq9As6q/+auA4tZ83Zgdu+OcLMYGMPp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37968133-2f27347d-e147-4f60-a31b-f5198c4db85f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af4bdb9bcf88b09e9d299d1f0548595f8a6ece084826e0592d7faf9f49b2de6e
Date: Sat, 26 Feb 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645905084
