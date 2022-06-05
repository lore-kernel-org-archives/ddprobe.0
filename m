Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6524695
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654401959;
	h=To:Subject:From:Message-Id:Date;
	bh=S94+HAx0Q3zX/6wxPAK5DGBbu5wY5Qlhbr7e9E6VjLI=;
	b=Rjzb7vj8kgqtog5jmRV9PP7IEehDWkkOzW24SZ4J2agBnkqxfDA2QqAVn5nXkZ/0
	ceOG1D0Hj9e2pDwd7juciIFJ6pNYFUoUCJ0s/MPWV2LhE7nJ/AOAxaN5V4yTpJUgi40
	aRheOatQBpNPAa43vlfT9Rr3OcYJENKwfcrYZJJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654401959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S94+HAx0Q3zX/6wxPAK5DGBbu5wY5Qlhbr7e9E6VjLI=;
	b=MwWF14EMzSTs9NyDECvQG96UknRv0gncoSAeRJgHJYimiqq2wS0gO+DF3UYj+F7/
	bV29ltlp06h9clwFCwYsCBOm1b8C+sHAlEw79LVjelmIF1UEODg7IQc03mAGFX/48Hy
	C7N7kn6Fvzf54OLt2eV2BlSltlnFBHzS+fglCydc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181320a8562-a747edd1-118b-4b54-9d1d-6735caa42bf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e232f66672fa1ca50e256e0541f8614a4bd60011c161a9d942ec0e83cd91f45
Date: Sun, 5 Jun 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654401959
