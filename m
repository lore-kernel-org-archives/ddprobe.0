Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E704C6E
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660254652;
	h=To:Subject:From:Message-Id:Date;
	bh=5iFT1qinaNNo2ekzgObSKUf8/irs5sbitVec5AxeHbE=;
	b=Zu3ofsjVOU0uXHuf+C1yJw6Y35m2+UsYYyyzwZZJQQk7Tr66b2SROjZjnA0OV2l0
	p//lrS11iwq6oeADrnGicDr8eIr7ZfG5nLp8u3izXhE+Ov5khdkNZ/+JYmCyqrMIF3E
	yrJL1wKDfI4v/O5LaA8Xtmsg6Ei2UfUAqNZpKY8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660254652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iFT1qinaNNo2ekzgObSKUf8/irs5sbitVec5AxeHbE=;
	b=gkhFnX3iDN+h53/haZQF0rvqoAeIvVRHiWgRJTQzbZzhfBxxcDOTPlww7VfbrWam
	UTtxXuG2fm8ZLLDTXct5WE6R4AZS7VMmZX4RFurmEEb/pEUZdNM5ejZWvTXFmWhRJUx
	kBoohoUCQsndCrWUKQ/D5mlyaoUZr7i8IH8mzQE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ee3888d-d7c8d4ad-76be-4878-947a-50cb02dbfe66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 407438180c441582284b9cac2106763ff69c4276e93fb76ce06e43258473bc88
Date: Thu, 11 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660254652
