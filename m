Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5197B7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659573052;
	h=To:Subject:From:Message-Id:Date;
	bh=pYO22PkwBXslGmAMJb4IgeV4O1GceRqstISzVfCEUyM=;
	b=NkBzfr7inukaWZlM9xqg8Wr32Rhc9N5U57tU3WHSaRps/yuyhu2rCreg3dLINPmw
	zyIXynQqwqWgCR38lOaH7m686fVxSIbUcwK16H2LpLNbC0xR/yh0BgmzXhFLgHcTPAa
	XtTiRJ5wfTRvH2kLqb8iAggDHUnPUA0lA9SKFxCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659573052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYO22PkwBXslGmAMJb4IgeV4O1GceRqstISzVfCEUyM=;
	b=WUL1aBavQ8H63e0dVvhVW6ISw/E2Vitx3bNba2UvFvxhqhUARZgvNalQtPjbPJ2W
	uGxPMEsfVO/a9i6CcLxfP/SqmvGb6kymXN49GCtvq5mfieUSYvtXQEUk8rNjzZSjd2q
	Q0zXs63l3nrBCeAPUIh8MZrT5Fijla5UYFGQRX2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182664324d0-bcab1488-b893-490a-9a1b-048d8592e34f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c9580089943d7e663ad29a40f51d63c1bce8fbcf52f0e64ce5cb41e436f52d7
Date: Thu, 4 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659573052
