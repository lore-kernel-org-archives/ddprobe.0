Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515F7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656530812;
	h=To:Subject:From:Message-Id:Date;
	bh=1Xvc7OufgJ7HkH5+eTkdAmwKqcXrz7QY/D6FBEySn1E=;
	b=YXAW+h4V1/eTC9XwpKOGTv4aO1Ww6ZIqhFMsbCqGFgR99InfVYxWD13JJWT0TT4D
	Ib0dYRa4pTi8/b0j6Fe5fd1bAgG9wyXZZnPf/oBuDqBGMlQnCFNGQtqh4oHKA31ThZE
	wIk3+OiahZYfAqnfQKowDHwkMVC1J08aJa4T5m4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656530812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Xvc7OufgJ7HkH5+eTkdAmwKqcXrz7QY/D6FBEySn1E=;
	b=kgBxoQheHSoOTG3Kv4tl9ecb2vF3g/d0pVacYVEdgsdwehO6Rq1RNKEkATU4iNqA
	BhE6VZGrpAPNi3Sxb54cphcHqTBiKvMGvuCLlPrA+DmRIEdloZ12iHbS86JC8xLCQxz
	EZUu3XApk61u9MSAb2CcmjzF/jLJMg2eQs+vVwkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0ee3d8c-6dc13371-1e99-470f-b2b4-88f4aa4352e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 290eab9d7a7c2cd7d4b351adf2b4c830e6ffc3f93aaac3d019d7c1fa89e7ed2b
Date: Wed, 29 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656530812
