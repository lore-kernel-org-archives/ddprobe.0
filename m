Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEC1A54
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661308253;
	h=To:Subject:From:Message-Id:Date;
	bh=hYErG2HyrnZjBmhd1Vvc7B75aIHROCt455BJ3KZ87P8=;
	b=Ma4p3yxCMMmboLzwHLX1be7LsmdSHUbtViJTMChypS+uDIXnnLnpFzm95E/KTsmy
	8336t1vv5aJOEZBwjzVywH2q7UpFCdqtYiWvAps89mxKYVTEJrF0pP7tN7qz2pAQHX1
	788q6r4bQ/0aVSHd/srsuSabO0GrPw4jYWaPKPDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661308253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hYErG2HyrnZjBmhd1Vvc7B75aIHROCt455BJ3KZ87P8=;
	b=PmrXzSkacBBwi8jzbyd1nPDunptE9ddYqBHQrsWMWsN/+NfUzm/QiuofQl9p910a
	GjdKiChn0UsQ8mZ3UvkKyg6EHkXlSTnlk4gg7rCSYgw2p8dA9OwwU9u9HTLEyWfyCM9
	PKiLJJ5FJQEFBYkugSqVBDfCd2Mh5f2QnfbnL+ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdb031ac-16c8a336-45fc-4c69-b1a1-b462df42b595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad382f1ce9fa98dfd7f50bf3062e1ff61b3ee93c9af79206c24da13dae7d92bf
Date: Wed, 24 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661308252
