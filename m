Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C759210D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657091212;
	h=To:Subject:From:Message-Id:Date;
	bh=aHUfyuQcY9MUCH2DMbIz4IH6ynpY8Hrb7WaoIy9qYiQ=;
	b=NLBX8sJsAXSAv/gvxEn6gYOaarmWVXayUHterztayWGYYbLTC9VzK9s/M07wR4aF
	8KgdXO4U5Sk8sIDv35ckNORjl85FEFgQ48XvOXt2eheLL6Rm9KXlCTdrskDJlYyBj5l
	wgcE2Qgc2dIibxJB68+XzYvZUmZ52i0ViyeCX+1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657091212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHUfyuQcY9MUCH2DMbIz4IH6ynpY8Hrb7WaoIy9qYiQ=;
	b=IijkzYDtx8zmEvaeF0pwoKMbSSVDYKHDIcXqV49EN/hBwGok24zAgwSu4dYpYJlf
	xe/2Faw+tK9S5+02MO7R6rkz+1scxk6g01K925xeb1BBiRmUL1quVRRi9LV0igsHfXB
	NO9TLDz7n1q7HRNXLRLsptWapqkVoe61Ekf6/s4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d25543f2-d17c9472-ab77-4269-8504-0ea270d2c33b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d82c98fa072487bd9b3f7db754ea7174c93f992639c25ef0ad55c2d38cd45c30
Date: Wed, 6 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657091212
