Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B557F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659360053;
	h=To:Subject:From:Message-Id:Date;
	bh=X9wnsabbZw2neMziLbjoRzP/t1jMSf4Q8US5R+cm+Tg=;
	b=FfWbuIP2UEFxcGCthqhXtrTBFwaYQMberkStzzMiSRSOxLEFdShLvpUaYAgYWk6D
	v9U4qmYatVeUtFaJClnXBGjah9bLDsebJsYl01NCjvd4ybK8knjKMPq8voq6bOfKKbd
	7Bm9kqiz2PIcxxwhy0Qi0ntW73ZGUaiJ8l6Z9D74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659360053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X9wnsabbZw2neMziLbjoRzP/t1jMSf4Q8US5R+cm+Tg=;
	b=Xl58uMEMud5PjM8jqfVy9tMkp/OXdN7d64cuCNM+TU5CvFydEqH3JEdSfOiUtHsU
	NFLVF6p83QVP1WTlUq7tOI0fN5jOZ5rvmNMVxM2FRJ/Jn7GocAsr1tk3bEpJe4qA7QE
	0utiZkGf04iEQbrIVOKNbxHXKfz33INdtUT0Xz+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825991051d-db2e00cb-b3ba-4b18-bd73-1fa18279c15d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584cd7c2a67cee9029939749fbcc6eb0dae39e5c47dd4d4068dbfe2f927cd4ef
Date: Mon, 1 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659360052
