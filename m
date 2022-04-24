Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560E17D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 05:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650777958;
	h=To:Subject:From:Message-Id:Date;
	bh=lJtvcr0q9ndyTuNnotmOwGsA+tPN6GrQI9BsweAQkfU=;
	b=mFfNCCHNeeCQvfgxFcTGoRv+lsQnAysnYPjA6ZZhCUxX3u1JJ5IYOstLX/svvVqP
	drixASNd7yElqeH2+OC2EsF31AANYG2kiid9Slv6jzo7ELQlS9OsubSCoThYL6YIspJ
	h5yGapLECC8bHnnjrP7JoQZl1g9K7uj0cG3SkhH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650777958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJtvcr0q9ndyTuNnotmOwGsA+tPN6GrQI9BsweAQkfU=;
	b=IGhzk0tozN7SA+uv2crOMs57S3YhliaR+0ysGqPKq/iS6gv5TECci6ZAE2Q1ivy7
	7gTzqqZ1T1NXmSwaQ+GfTO5snmLHWi9C3T9mY34bYeHs/oMNvnTCZmpgy6IOTNxjwxj
	qtbLVkyODBcKhSQ/IQd0fedsw2tRCGwDu5qLQ1Zk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a08a7d1-6fa36fe2-a71b-428c-9cd4-a1e075e6c762-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3c33a2786eb799473d0938fe19b267dd4600c17c2b1a3659c668615bea48983
Date: Sun, 24 Apr 2022 05:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650777958
