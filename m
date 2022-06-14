Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A7C1851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655199779;
	h=To:Subject:From:Message-Id:Date;
	bh=s2ZOjA7MMFsthu6F+2mIxoCgLt1PDlrtHzIzr4TgINM=;
	b=TifYyNCu7iNtmGvXwAJDEbf5cnL1p8AZy9EXaDWysxXjVgymqeiDEsQXFlkq9bNO
	QpgbbWT91mL5Dy70d/ULpoXCQZ4qyJRfu1xeZPkPr3zpuFfpnQDGV3JG2WxI3oHCCZ+
	pH4NTNELGjXnpx2kfqjdmdwbbH6lT5yvjgNFZmps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655199779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2ZOjA7MMFsthu6F+2mIxoCgLt1PDlrtHzIzr4TgINM=;
	b=dmvTALxVgy9iaD/b0+Xvlb3L1k68U3/xR9sqZiQZOl7jDHJ8rvfCPlrzQ8VSQAF6
	EhJA/Xh2bKVRTiz7S5/I7efTi9kYB+sDqpVxraNjxa3tgdbL/SH4Hwi3P1BwFnJrjNx
	+UAg9uq77Xw+/LfhJCtwui7O3HMdX0UzfslyOJ4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181619849bf-f8f9d8fe-2950-46d4-b9a9-ecb88ab6ed98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c82dc9c744c4725203b5da8b2b77b8909a183435e2ea4aa3ce41cdef3f08133b
Date: Tue, 14 Jun 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655199779
