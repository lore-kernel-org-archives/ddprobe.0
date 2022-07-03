Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243531854
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656811612;
	h=To:Subject:From:Message-Id:Date;
	bh=HhiRhXVs8NnNKMMEru+3XjP30z5tCuuzRx5sKvsoA+A=;
	b=VN1dBun8A9IItqewMW+op2H1OyfNfeYA1AtisFaP6IavzgKeHMIDgdntHaaYLHS+
	l73fOxe+SHaqsXJb0/0DL7yCviZg78KesVScKkvsbewkVP8Sl38Mkosrz5ssZVtiXRC
	zLtabCagM8lyfOXd/7TlUdZDO+P9myJSxykMEjxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656811612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HhiRhXVs8NnNKMMEru+3XjP30z5tCuuzRx5sKvsoA+A=;
	b=ZQtPoYHsbXtoiM65Vu5kLDo20wrcU62ECMHLwvA6T3nHzjziP87lcAB7fQmwIkw9
	MzZFVFPmx4GqUqQNQl8t4s2SxCgodu+ZZjUA/Q+L2UtcAVCBehiZf9zJvjKJGzvX3WA
	GceYTmMUfrActDsemD2K9K2yVfK0oLi8YK5PqmPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1aae8a9-d86e67a8-987a-446c-90ca-f5479ca5eb29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3729f07f429fb0c2de0711fdacb9593cafcb9d9c85a266282210bceea9595a4
Date: Sun, 3 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656811612
