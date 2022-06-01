Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6017E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 01:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654046459;
	h=To:Subject:From:Message-Id:Date;
	bh=7iedSegj5LIKLbrkwaUok+x1qAIYQ6JXlRjcPOi0yMQ=;
	b=F7T/BzLMCHZn5JGafgrxgMMIigoC8FCY7GdDMwvRCdNqFqUTxEMCholdi7CZMJF+
	ZZ8v2jAxH1Q3S2C7lYUvPFk0hkDQYkpqi2RBBiOE44YoaMIG+qcqp4S0OLxeDjF7g5v
	3FLxe3jIJtDxhN5aNeH+niSHUQ26aEOlX9uZ8XEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654046459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7iedSegj5LIKLbrkwaUok+x1qAIYQ6JXlRjcPOi0yMQ=;
	b=gyggDLxJQ8ap9giMeAuOrM4Cwjj+MELc0V6vNVqGJr1xDZVpufOxF4LvA5yIoAEl
	x+Ba3ekYSS7VxBVWB+7VddV4yqxOut7AuCG6/ngSfw32cNZJTmxnRDSsTqq86iA3eQ5
	0+0RZAXJNIuM4U32IQfs4AoyR3IcvbP3g1PXSt3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811cda055c-09d23cab-3418-468a-9285-5876a1595b57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 336bec2c28703e6187a3ace65a05fee73d256ab22ab9a901414805b4fe6ac82a
Date: Wed, 1 Jun 2022 01:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654046459
