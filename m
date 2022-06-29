Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B8C7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656502612;
	h=To:Subject:From:Message-Id:Date;
	bh=q7Fiv/aAit0BNPzzTPOjRuTc7qqEx67J1h02QtvzCv4=;
	b=BjtCy409jjLjWUwz7cgCY38q+sIAsDlQuKfirVDRA44d0wwrYrcz/4sT2gBFM1pv
	PU8H8+qR/YqIvmBNQ4DUyP9amz/HLZOEntX1OG/z5HeKVWcy6RzXj9yMQZpJ3jw3t+r
	5yns4QrIE1z7DAnUCv0QgVBL5ESANdTIaDyl3ZB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656502612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7Fiv/aAit0BNPzzTPOjRuTc7qqEx67J1h02QtvzCv4=;
	b=h+z+wqZCjdN3uXyZT6JJ+00K+l5n5QLTHiuIFNRDrsQg+IUwnRievna+ZZQOBenN
	n/m9QyH0PUFVGPh8X2kntmRJbJzioM6G4GnCn1uuzHnsFXYwEjZtvSgRN/nHTYZBVOx
	DJRIW2Ksc2ybGlVXPUH/iiyV7PF4UmTFdXdSvum0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af3ff13b-23e9cac0-09ac-4ffe-98f7-8c2ed834f1ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11cd407e494d32ff0c7fcdd41a07767b1a0279496afb7b89d13ae640ac0363dd
Date: Wed, 29 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656502612
