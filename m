Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11DE15AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659252053;
	h=To:Subject:From:Message-Id:Date;
	bh=8H36JPrHm61LontJru4GH+RsEy8NjhoERYmUEf88mXA=;
	b=Uj57O61GUFIozGxVTHp6gKhsGViM9U9TIlFrJat2zRLb3LKDmZOzMnEUvpSVqOTP
	oe8uyYiZTrlboIlr1Amd9BLo3U9p+W84CbeyGy70GHolDCGUCqcprlOqYXl9TB1O3ir
	nC7puXjBEH3YiHlWPkElGKIlZO5hduLs/k/rfAag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659252053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8H36JPrHm61LontJru4GH+RsEy8NjhoERYmUEf88mXA=;
	b=Mr3qKDVvt2TFb9rVbSFD0YDIU3z2wbnlBVAI3yqDmk4hKsnVENo/xVhv652dJe1B
	c7W7yayiFjgzYi13d7loEX2G6/qR5/SyMbgvfkN5NWJGtQgKC+GggRXjKdZBcquAvhI
	/oXVaCI64+c/sF+epzOaKVpa0lXMTR2qmyE1cVAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825321125d-fc214a08-5984-4fe2-8abf-047fb4ae87e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c964d9599abf1b7a8ace49bf7e802bdcecc63b5dfb4c034ae0d7249ae1dfda6
Date: Sun, 31 Jul 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659252052
