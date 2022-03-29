Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524D7257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 17:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648575718;
	h=To:Subject:From:Message-Id:Date;
	bh=01+8zPftkg4G9EJmRqRxoLqCv0X2NuZUXC6CWtAfX90=;
	b=METzcs6ajb1JzofwwLt3jKlMD7n/ZzVWTV0cpqvqEKrJ2z1s6OzWX7/S9303104R
	mC0m59nY3zm0fOlPnp7kXts5qG3Twgls/2N4PqdgQ+Cnam0QY2xnsdW4k2SYU+ubVLR
	N9qFLb+i/xOcDfP+pgc74Vj7RtGTydfmBNu7y07U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648575718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=01+8zPftkg4G9EJmRqRxoLqCv0X2NuZUXC6CWtAfX90=;
	b=EDeQJMErSsxoa3+RG6Zw1/9nYYbXUr6me5d56y+R2GLc0AbZEPtELDgW9o4NNrnY
	F3nrJy8ta6t0Jm1dcXp2eATnp1V47mRvyt717tdLINuRKT562sCkQhLDpEVEnhE6/7+
	tQK2uipfmPndgZ7yzQTIUD5p7KfMHumlHWhWKtH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6c523b8-d60f68c9-f1aa-4f16-b33c-2eb0d9dd1730-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c6557d426d84f961f5c8267957e3da48a9825021a74cb56ab82a16574741f52
Date: Tue, 29 Mar 2022 17:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648575718
