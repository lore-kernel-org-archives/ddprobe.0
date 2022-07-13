Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6940A29A3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657717612;
	h=To:Subject:From:Message-Id:Date;
	bh=PbsIs523WSwp4gkqYNxgKpTug/yDF9lg4hG6wmsSdjM=;
	b=KZu1LK5iDXN3yOAq3m/KWH9NQ9IofpQ+0OaSrCBNw8kA0QJR2G/95PN7e0Y2Vu3M
	iZO68m3WoFW53Hc/PG1c2cnFtYWSjF43qoxJFpo3tqUGiGSVmKoSrXuxTbS/iNJ7YBR
	gueLaCEN/pwWmqm+fepxv8Nqgoqv/WxSyEZNmyug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657717612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PbsIs523WSwp4gkqYNxgKpTug/yDF9lg4hG6wmsSdjM=;
	b=KKW7DOBRRUQBVhcR4tiqxAXu2wqpcI3PLa5p8ttn8AAuJa9Q9aoVWD2hTDoefX4U
	nwygS98YU2KmxIBqJyQYAI27Fza8W/flju+bDQ+khf6y3HfT7I8BVA9bq9UrveFfO09
	n/yZmgu6KhyOFTtQdEtrJsd35hX6QcQkN7e7hw+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7ab5eda-1d51d053-a13f-4997-a33e-63e5b6330f16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 080f2498ca8efc3ee73c030a8e48aa4c994eec003c65313d816a0448dc60139c
Date: Wed, 13 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657717612
