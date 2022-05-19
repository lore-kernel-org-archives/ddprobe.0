Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32E41FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 00:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652920319;
	h=To:Subject:From:Message-Id:Date;
	bh=PqQna5epTCUfvfoS5AfUTnxhJkUtHjdlypwAz+kE0+M=;
	b=WltUcVEZbSb05GONZVlJ+bR9pI0u8Wu9/RPuhLgJav6kqgRZ+od4wx+NQqfYoU8i
	OeChCdi0Ldt/4D+3SnbxFhrkHi3OEWOHyj71wIDNUfgVFvxNzdnDj7M5Y6xJN6ylIEf
	b3AOohIfo1MvRz8DbhZEu9w7ORFPBhcagLPqzqH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652920319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqQna5epTCUfvfoS5AfUTnxhJkUtHjdlypwAz+kE0+M=;
	b=BQ7CsWbnRJaIi8j7ZiWIBi61YoWV7SP7trIE4KxpvYy7WQ9bRDuf5uJ+Iur0DAu9
	aeAWhtuP9GC/SgNNszDvIL/DWByYbT59kHCS/96uoLMzU5VhVGl3e8fou4Uq2zLyHW+
	hztKczUc1agvnKIweVfRRmK0B7Qso5CA3R17Zgd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9ba7d29-342b95d3-765d-45ce-89c2-7f5a5ecebfdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58fb88e14b3d99339efedc6292f3c7933d4038057c1c739647a5a8e48ca41b9c
Date: Thu, 19 May 2022 00:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652920319
