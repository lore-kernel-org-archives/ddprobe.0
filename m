Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD94695
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654403279;
	h=To:Subject:From:Message-Id:Date;
	bh=KyFdNzrhcEiuYq/ajyqRWTX9HMi18XV7VOSvIappXmU=;
	b=F2R2uChpRWVZOFK1HKW6pIFeLpgNEHu8yD4s6bbfHBa5ZZgHX2fIcx+X+VDCk7bF
	xHypYHLaL8YZxm+C8LCxrXd89eY9DB/nNvPriAIo0GBTb+/kgR5MaZQ/jy0dG3+ZO5x
	r/tMPFY6ggJtN72Npz1CXYf/DSswVOBawajE0Y/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654403279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KyFdNzrhcEiuYq/ajyqRWTX9HMi18XV7VOSvIappXmU=;
	b=UelOOOP3YAxqikHk/DioVuKK7FfO4XZUDKTySbQWzF/T/j5XwMxTu9THxOGgcefC
	vupOPY2UAl5J01BXgbKmeQxBm2XSAXkWoqnH/K24ykzBUeB0BDaI1QH5u5wzYs6rro1
	4Pu8/2H0PXpTFMyHwf4OjJw0CSVULxj8R/S02zDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181321ea995-7d6908cb-403f-4b4b-9cb6-abf39e365776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c1fbd96ed8cac44ab3b78e8012f8f1eb1b983ca2f9e4488decfb8c29ecaca44
Date: Sun, 5 Jun 2022 04:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654403279
