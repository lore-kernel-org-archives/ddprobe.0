Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA627A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645840284;
	h=To:Subject:From:Message-Id:Date;
	bh=RIWp4yxqCP+7nWJ/qawfKoZEgfm0g0WrXohOtS7vblY=;
	b=LzIYHx1Jh+VAHPZ6Y5WvLAFIHkIti1AXgyRDbtqAHhrboUBtwsIuFuyDuQAKegRi
	LBWY6JVyX2ks3DfeNtWb53ky9dfCgK73rQWRAN6eUhGIgkqL6vFP14tABGcu1xjXWxL
	sqMJNd3kqBhM3sIXN0SUfaTmqH7K7JCCTLBInM74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645840284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RIWp4yxqCP+7nWJ/qawfKoZEgfm0g0WrXohOtS7vblY=;
	b=DoS0bVyrg7z3rBTk0ya/e70CnD0zAFht4gHIkapeQ8Gph6G32e6r3ohppdlzvid/
	d/NHRvJv0q0J+a9iacgfpabFYzf2YWTpDX2PxAoMPdmYipyw/Ab7oJqJrJiWYoHLxVI
	ICHowSb3VFzTJLV1J2p/lM08os93G1+LCUPi5SQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33b9bc9c-ac04aced-f119-4dbe-8b03-8ac2a73b987f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d5bd31807ea6b39cbc87a3efd150d94af855ef2406e99902ce7f3b3a687c823
Date: Sat, 26 Feb 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645840284
