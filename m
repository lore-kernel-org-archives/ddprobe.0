Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6406036F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659582052;
	h=To:Subject:From:Message-Id:Date;
	bh=uBsCH6ar38KaDYkE7yk32/frcF3aQR5orM3RWskWl2g=;
	b=amL435yJEjSw1QGl9F4d32Ji/IixvT/xetHdtWwTDj3yFPVezHmGixcbeTcaDYTS
	4Hjs4Jo3ywhh3lMdZp7bBWDbR39Mw7Xy7wtiJ2JQoQjNEn0GZlZEONc1cFIeMEnZ1uH
	LNUp2H6SQNowN08xpdpdtxCoDhgS6aJJ/y9ZzqTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659582052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBsCH6ar38KaDYkE7yk32/frcF3aQR5orM3RWskWl2g=;
	b=BMmXA8jpFK1b4/zKfK0sMtxFAtozsDspc3CgTDOID88zp9h3BtYg/XaJ8fum8vCV
	kEEx/PL36/2V11vgmVr8ZFdZRDmocDfKH6OJTrGXTQJ3cKv1uJVrBpjJmVD7qcM5RBJ
	AEit/xKot2/r0KlpdqO4QPr3/OQBJdWe8O05iDVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266cc78bc-ab79fa01-3c2e-4362-beb8-39b753db108e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f3f9ce9e3baa930be174328d364af5b50af77fa1677a4c55ecceb4c00b19c1d
Date: Thu, 4 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659582052
