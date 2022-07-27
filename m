Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F82EA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658914852;
	h=To:Subject:From:Message-Id:Date;
	bh=MYkMB7ZbFecMq2A1ROINcw1yM6eq25NEav6Gq2osRPM=;
	b=AYOK/0X2WyhvmB9JI98aopumxq6JzQ42vXiXnwAPnvalcK1lQHiaofitWXF1Bwbd
	7RerQewDBHwKNtm5+VsvOjDxUUsFINRl1kPUy751YlI0NJFR9fbAtM9x2+uhe51+vjg
	6f/n01CYj12czoPnQp4/7Cc1xf5evbw9wifTRQMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658914852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MYkMB7ZbFecMq2A1ROINcw1yM6eq25NEav6Gq2osRPM=;
	b=OhgakKyVc/57x+qIA7toZNwu93gOwvwgM8RRSnVqvQwxb0CXDsSopZtFyb0nJKFg
	YTLxgTaKr5QtNNRH26zrBL2pYg71o29z7SXPpjW54knhUTbx4FxolhDji1IJV9lh0Hi
	0/H7MEpszmWzcd6dmVJq6Rmn9xhFOeq+mtmQ14rI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f07ceba-24cc7eb9-f124-4fbc-b027-e5ddf6879003-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8da7ff1cb42fb4eb8b358a026cf4b60ad7f868cdd04ad038069791cb6ea2c8af
Date: Wed, 27 Jul 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658914852
