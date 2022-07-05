Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC892F56
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657025812;
	h=To:Subject:From:Message-Id:Date;
	bh=c666HUI4GNnAgo5XBFtShJzW7bQvzJtG0H2ywifY/oM=;
	b=ZRul/cOYv5xe2FUwuh2bdG4h7kB6T/ECRePQhnAOfh2vpMrNPnwtJvPx7Fhwab73
	MthjwnjPxdvg+aWwhJuElwylSgpey8SzoL0a3+SEJTRC4qAxsKriAgnjycLd74xY6UB
	KoLzNtp247FCw2aHT/14mdoYWzwV2+H+k5rJ0Rl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657025812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c666HUI4GNnAgo5XBFtShJzW7bQvzJtG0H2ywifY/oM=;
	b=KBK5JCqUGlfhjQ2K+DzUMmHY9m0GiRYJVnHmnlvkZwPs3hLevDRjy6dt7T5/sAGZ
	gTx9vidEnDA4Soj7+l18ntRjidHeqAXan1JxEuqHdR2mAYdGxvERhxGd+U5RV3BnR8r
	xdhgLhLz7+hGasqotbnPl+Clwz5KVdDkBWSjwhHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce6f572a-cc811d28-1027-4e27-80d8-b93fc3245eb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce92087ab449ae21315d02f767921166c947edf39e8053d39d77b14181a45996
Date: Tue, 5 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657025812
