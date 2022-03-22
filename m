Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6568B802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647926184;
	h=To:Subject:From:Message-Id:Date;
	bh=wONpqgbE15MYGhQPPByIGOEpGarsSR08jF9YLddP4FQ=;
	b=HJ4VkY9+3mtZP9he4VYijqArKjMyAsWdjTjvaZRCXqcyapWjkCi9XlA6JW6p6Rk+
	ascP/r52wRs/L5Etp9penJs009/Qi6A9y8QiQOGthuVb24cv34HhZJOv4N+0G7wxCP1
	iN9dFPDtC+O8/lhijV/wAjos/JnSgHLMG+++eN+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647926184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wONpqgbE15MYGhQPPByIGOEpGarsSR08jF9YLddP4FQ=;
	b=I7+8PNcLwvBrADJ0hFJ8c/NyLjyubCxwvXrGgzXw6ZtgYwtnPyNoCsoSpkLiaWqB
	r52/n/xnwGSmzlaFdmusosK6I5hvhg8xHGccc7eZWOJbWHyA7P5i5SE9IseR3ufUeEa
	mz0d0EMGdw7K9SKj426A/l1vzNqtpDTfEh21DB6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb00e0b54-7a0be6b2-4d75-4193-8a79-115e7be4c7fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9def0150600fbdf121f4e3a100a6c9d01159ba070f55433f8179a0aabcd4305
Date: Tue, 22 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647926184
