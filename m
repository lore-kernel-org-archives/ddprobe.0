Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757D1257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661001052;
	h=To:Subject:From:Message-Id:Date;
	bh=cEkce1G0xWSXRP+dcl3IDqAvfrjRrJOCIFzhiZYJLa4=;
	b=Zq6qyPwyeSuKorc84lBtU32B2B5oh/JBiGgIivaC0TLW1WStSCxt7xgfTyJhOKRX
	e6WBCsWxplwL75Z7KShs1xw6K8w/vBMpM44HCxoGKjS26Pj0BGcWABc/8lftOEXjVtO
	IsOUrppuw6eAfgTiyit8fLdzt4E/+KWJMz8ACOnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661001052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cEkce1G0xWSXRP+dcl3IDqAvfrjRrJOCIFzhiZYJLa4=;
	b=L4SRUZ7KTYCm/UpmT1pH1xjzpd6lbPLEdG2A1mIc0H5QsM8ltPM5wHBm+4tvaaKu
	Gtwp6ZLW5FVf2b7x9yMJGPA0TkuxypYR2Ur+Djm6h0axHRxjB5jwMvlC+mPf3DYX7IA
	3hSIvD+2mpEq9LHrjTR4J4lUr+Aq4yrf6FxzhJ4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb60b19d-5570ed59-31dd-4217-904c-d104feb45259-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5baf3117c099c5e1194a1a151e3548ef5f583f2790281f908692db649fdd2692
Date: Sat, 20 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661001052
