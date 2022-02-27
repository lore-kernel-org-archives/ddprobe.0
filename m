Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73AC2F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645935385;
	h=To:Subject:From:Message-Id:Date;
	bh=kkAkRzPbi4b7Y23o6nNhT0rePPXQguzDUK4RVXt5cH8=;
	b=UxetwnrweLny84SeqzK6zTc2pppQscpIDQyl+ZPOwF3Q1Du3MKgffe9Yhj/EYXlI
	m8z2wGXi9cjJCtRR1q1pbsFDPIZkbZ9NFzZjk31u3QdtfXBuNthpLRqC2mLz+YuhH6D
	X6vgpyH2cuX822jCWV0s9lUR3b7Eh4jlYwalbWio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645935385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kkAkRzPbi4b7Y23o6nNhT0rePPXQguzDUK4RVXt5cH8=;
	b=CeF53fUa7fGmesStA+K2Imbj2cB8kVjwni/r+PoZYbpV9c9cR0nfWPOsEj/bn5Av
	J/aSB9EBmHgzahhkkcymbN5Fuyy2VOou1iwvgDmc9mFBRKaeevyJ7R4KvRkenv5ITi9
	QBi0cFHJJtW+53YCXwDH9Ij+F0iP0WHZ8S9Vw9jQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3964d8b3-442c9d58-6938-4c54-bd82-36091de95a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: defdc02ff8b4028880bbb96cfda76aced122f6627f498a2b4a4e4a0d42bbc93a
Date: Sun, 27 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645935384
