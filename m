Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8961629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653299999;
	h=To:Subject:From:Message-Id:Date;
	bh=9GSplwKLaqrVRD5fhpKrbXorPmhVcG+oMao//er3kIo=;
	b=bwH9RTP3UlGfzA+F9QCZt/narI9HMTbxXUMod8iVx6PTnMNUM8P0vOwF05So6yOO
	QN/maemgDY4vZyGILZLeKFiwbJhOR+/iPN4t4ZIznkm0CQ21Obrw6eyIibx9J+y98XT
	fEbDiRGJRkbgYJD+u+gwRvAZUu0Tn8ivzBm9VNDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653299999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9GSplwKLaqrVRD5fhpKrbXorPmhVcG+oMao//er3kIo=;
	b=S0/aOknPJt6joYwbGL2FWTpWIhTtZ9lsT+iEbFxRuLjChsEgWdj46CU8fEhRpvaa
	ZlXBHhWgzGX7pDcOl+ajJiP6SeE41o6BMvMr3EdJThe9k38DBdkpEEx15SgKY5FniV4
	P5tjZUR1TqEMyxeokVQj6klw2IguuasnjXt7/MgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f05bf230-7eb3ed88-50a5-4ddd-8abe-abefc336e374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5da5829db2be317034703ae5258219f144f1af9a2dee579e53b88a995efa92d
Date: Mon, 23 May 2022 09:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653299999
