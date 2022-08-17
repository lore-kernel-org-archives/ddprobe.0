Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544B2187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660743052;
	h=To:Subject:From:Message-Id:Date;
	bh=Z0yJ3A99f64gsyOejfTnif/QklTvIcx2ounugtt+554=;
	b=lC73cjQXvd3vYnlqOGyLycmxgMqEaLu2e2k+LT0CabBZPxQ5A/2V9bEbws6ekou3
	3R9y1CMBD4Q4mTza9xwAmIfrMl82AW4aSOc3De8ZQST1WCgsN7qLgdWjQCujhCgckb4
	MElnrleu0C4Jq4qFJPJa94eo2VFYHdiB/sCMjBsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660743052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z0yJ3A99f64gsyOejfTnif/QklTvIcx2ounugtt+554=;
	b=huglEnMZUTNS220a/jSstHh3rriVEYdPNGse6Q/OLKNkwc3ysJ63orbVFUwrOSw2
	MiQ7uzER7ARAtQGnxKo6PwQjreMKs7ABVjNt1DsYHHvFiY3k5dHBofWj28kwhojnVZs
	uQOXQCv0cfDd75pQv8UyVEehwoGfS9ZlKmh0lHdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abffed23-15334221-01e3-4402-b0b6-b51c83a14099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0715c42e239cf9e4ad3571843f07324eeba61be29e016ba3d4cfcbc4c1f051a0
Date: Wed, 17 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660743052
