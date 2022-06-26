Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE727A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656244012;
	h=To:Subject:From:Message-Id:Date;
	bh=+dn0RvgzFjcrwYPsWsALlJBr3MSCPZcTY9hU7j4/q9I=;
	b=QaJEIlhlXdan1j9g0bEP8v2ZfJa6ytUnmwb0BI2bErSin+sfqFtEwDpE9Y1G1RM0
	OUiBZVcWuJ3RGoN5mGrs5hpDZtuXoejGMZvVZKLJh0UrxBsuuzV/097U76lwu6bk+8H
	DiEGga1e0PkagraoPnMPYKYNOke3cc6jkx+Z2ilQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656244012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dn0RvgzFjcrwYPsWsALlJBr3MSCPZcTY9hU7j4/q9I=;
	b=QtM6KArFeUxPI1QsuZ5ZSd/mT1t+qFVQ6G3O1UuPlku6VgcqZ5+p54eDo//4gRHK
	3EtYGbYCcGoqyVczSnn2BjKpDKrncYunV3jPqHG05VPouXXMP3i5f88jMnbQTOW6O7G
	U5Va4Elgwue7tiTkTAihyiMzR5GtV4wIDXDkQJJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fd60509-f8af4bd2-c783-4b12-bd51-70483dba0335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b1274af0011ceef9edd36a7bebce256942617b6f2d1ce487fe90d37a607887
Date: Sun, 26 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656244012
