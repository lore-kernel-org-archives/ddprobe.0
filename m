Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F6C6AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 21:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655414519;
	h=To:Subject:From:Message-Id:Date;
	bh=cvIvHHPh28+gDIgZkhPpZAvOh6qngPStGtfSoMJbqxg=;
	b=EOs1Z2lW9G+xdw9tfkUMX/cnydZbh5JffZ6+dMs1wOt62D0fAsb9rwRVc6IpxYjG
	KzSyhzJre3H1TCib+k/z5qoOsKG/xrapRGQKWUI0ri3yxRHExiP59ZNpYIOMRrVWNcj
	+vk24V0o3Ouzy7lnYq6VATHv8eE4Uhe4c+GTvcLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655414519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cvIvHHPh28+gDIgZkhPpZAvOh6qngPStGtfSoMJbqxg=;
	b=cU9Ekv3rcDbD+KpQ6cz5pkAfv2U9c9dtW/rXUBXg0+/Gb04MMmlVvEJPzfnQQg/G
	dG4XLgGgfE/ZGCCOHjh5hjYnLiA6pRMj1rpqsyuahcGK8418PARKHieN43nbMbYBEkI
	WkMf2dD/l9SwlmcMZuCsY04J9PTv3ZLu7wNmlMNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e64f602-65a6ba8f-3c55-4643-90a1-c868a66130df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d98d1044dcfdd362e2a732c8d499e76d30650cc736151f73a2794c15dbc5a3aa
Date: Thu, 16 Jun 2022 21:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655414519
