Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C4A7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645957884;
	h=To:Subject:From:Message-Id:Date;
	bh=y36Eg9ibvNlHd9PZfk77E7PQJKd2zxHgSc+yi2x0wko=;
	b=NYOjENeq907Up1+GnZAD7EVJZzxu1lEE5kh2DKXJC3gCVFknZ4vTAFLb0zh0WVbb
	RVFcdd6+49FqlAd/FHWJo1RjrrdLMiwovGsaFkoZl5AZQPPttkY+MnwAoHAsOEbuWW8
	2gGkKAoe2m7YfjUPQJjN/xPRNiOsDH8+0JzekNic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645957884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y36Eg9ibvNlHd9PZfk77E7PQJKd2zxHgSc+yi2x0wko=;
	b=ZZ4I+DoYLsNk1c3FGmVX/itVoIEnc4XCHlGB0A1wEx4rM+eqJGGnoTMVlSaWiNc1
	aFr27pDfqZ/NeheSV3MUCU+b+4IcZczGMXvweepoQxKKLFoLDu5hr4Z3OdZiYQO44h0
	eKri/9EoAANERRkPhDapLCQzZIBjhKhBngZ26Y8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3abc2b43-683d2ccd-5de5-464d-a6d1-044f6fc414e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d94110bf4ee1be7eb9bfb488f3028be27295debb81b2403ab5ad4d5dc9f9a110
Date: Sun, 27 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645957884
