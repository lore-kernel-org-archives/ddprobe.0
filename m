Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A117C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 04:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653627179;
	h=To:Subject:From:Message-Id:Date;
	bh=ov6HgB3MggxEBKEOzwzmclSa4oK0mpOypTKrmL3Q4YE=;
	b=lfkhRXkPnOaPxirBm6xbEIxKXrHUQV3qMYzajI2rOcoNVM3zB3jWd84k3TpQOr5k
	szsGAHY4qxModIIVrcyKTaf86RM7Ch2lyGnqM/YKmm1mZsNzCn2eHRYc8nvwthxEIWo
	7gG7Q7xYr7ZT/OOcI6vzm06ENjyV5DNRAsp0SVyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653627179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ov6HgB3MggxEBKEOzwzmclSa4oK0mpOypTKrmL3Q4YE=;
	b=gvgzaUxIxvmkcL0oDOVqwcCKuK0dmvjjy5g5iUz7zl1DCIc80YQG3iQf/LiMqCp9
	WUcMxPjK0+YujievorkXe66eWPHuF9pQG2en7anEXpL0TnOaTOHu53APorKoFA21otp
	DKiIzhvGJJDIj+SQhN4AutEkSvnj/doQxigfcICY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103dc50e1-22d5619c-88eb-46e8-8ed4-262b2edbd974-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60e169a09ec641aaa8d32fb3893baa13b2f3556c08dcd6e88f964130d66172da
Date: Fri, 27 May 2022 04:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653627179
