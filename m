Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6F07B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 06:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655534339;
	h=To:Subject:From:Message-Id:Date;
	bh=EY2oe0dpAL0cb67sUKVtw3GhqOiesoKijd36kpgKPUc=;
	b=dDyoHVVSY0APIXtMdURswUhe1B7Yfs0GJ9+Kz/3sjEgOH3RBaUn2WwociyDUqdVe
	p/JJiR70rajm6gmjw7iHta4R0xtzlncWmighj7DBgR2XAci+Oga8kBPKMySwWSKdqdY
	HOnp0IW23a+RmQY7yLtrmUBb+HrrIsM4+lVBA9VM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655534339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EY2oe0dpAL0cb67sUKVtw3GhqOiesoKijd36kpgKPUc=;
	b=WXRT6aGWryeizvMDt7hXYIFjRvkFtJUR/nP6jY81fDZKpA0G6s/BL4dnjKIOinBw
	nEDNaWqwnjb1vdfX14mTkQxJ/Hf5cDpKq8BpXVGQUcDyygTeFhzdZ+fkEZ/en49b8tq
	1t7ClE1/zdnU5GaWURy+IaqqNx64o0XRtt5pKALk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175894491-547856e7-21fb-4609-b72d-a536c88c8c68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82343126b87f19a59c854c8e966e2710dc4426f1c9804d82e25d2e355b0368d7
Date: Sat, 18 Jun 2022 06:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655534339
