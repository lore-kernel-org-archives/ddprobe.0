Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17443A2C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 16:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644857443;
	h=To:Subject:From:Message-Id:Date;
	bh=xcYoGwlauQFteNRfNDDn1ODWP7iVQR2cM/ayV4v4qwU=;
	b=keOqYH1Ishgc6BVH3yuth9yI+M2y7XeGzmcU59yWfjxfwo2WTu6UPwsqr1uGs8m9
	Wgnqm1K8uMk37++JUwirSc+KavLOmYoCzVeIs7pNRdkdjZBsZmW/AcyT11phR62YUfu
	Da5ouLhxuTfPKXaRfdx18LERdXSf6NwdX2p1nXp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644857443;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xcYoGwlauQFteNRfNDDn1ODWP7iVQR2cM/ayV4v4qwU=;
	b=lbViUJK5n8cVcnNvHwS0FPtSNDkkEkULeSDNf8Drst5KfyYL3zK6Lue9Gvsdxbld
	apnvr1GGGIohTPotKVOaZtz1IIZnIvUN8NW9BbbwkS2ZeiSrx2seo8oJGbD/+l+zKB6
	cXhsOj6ZtVeFm6pLdHWzm9oEioOoGQ47bWa6BtH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef924c3bb-ad1590b3-3130-4804-bcee-8b3bc44a7e88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d400c9e4f62215a99396e30ef9ab55ccfdff5926646075e45e7d4a1676e8fbbc
Date: Mon, 14 Feb 2022 16:50:43 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644857442
