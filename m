Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF86910EB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645792885;
	h=To:Subject:From:Message-Id:Date;
	bh=b38LgG8JNzKtKOJlYy3J/eP4VgD3prFi8O67qt9bTbE=;
	b=eaR4DHWMEYf6S3/qIY4bSJITi0khqdNm+NduzHt2lIpN3JCqSLO8bSGIIdd3LNew
	xHu0zw4gbrR4aasd7uE7m3rRrpdGoT4l5x1EGIW195K0qvP8tv8wXVXHBeaWIp+uExS
	0ddQeMJ2IlluZeYItJpySrQJtGetLIs6Xy7kLGyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645792885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b38LgG8JNzKtKOJlYy3J/eP4VgD3prFi8O67qt9bTbE=;
	b=fejAznR7lWpk0n9CCpr/5C8m6AS6x425VUvBCowo0hOSwUyJxqFP5jf2643tYDLt
	ujpL33erI1cU8VilILaaKXH3uCzQJOF9Yp2vtOJQVxZA4wm5fUlOVRYCrHw81mpM2Ou
	p2uFiBi5B6qh6KFKC32JRPFDa3ksLFOCN8TL+1qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30e67800-812d8afb-49f7-43f5-a4c2-36402c1741d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3227bfcce5887ba1280eb509b52529e2b9ba7894b725e62efbab1af480dc67e
Date: Fri, 25 Feb 2022 12:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645792884
