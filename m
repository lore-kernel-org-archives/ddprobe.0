Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4A815A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647636085;
	h=To:Subject:From:Message-Id:Date;
	bh=NHdzHJMe/qbWR3EUNAc1svi7N77YObTFSQ6KJA2fKlw=;
	b=ISgIfeR0bSVD/5/FODqu2CvYKFYEicLXhyCXzQQBtzssSkcsqlWxaNESxN6P+mlT
	L/tE8d4r4tlp1LoQA3DoHbRBO82roflGhkLHHKrmsToZ7ejNdmk4mI4Iv4yKhOsQZ/o
	7hngSg9MzGmfo+HDIBQ+DSOfLBGUVG/OpeNLsRPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647636085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHdzHJMe/qbWR3EUNAc1svi7N77YObTFSQ6KJA2fKlw=;
	b=N4Mg1Ixhdxh4TctztproNT8sHVoML6X1zxjgyP/gj1MRZJ9SZvGVeQqPsubGhn0R
	KMrYnnC24ZB/jXGHiHW3Idq3LszbGe8BA5xkIe6TnQ+vvU3QDZGOhECTSpF6CC7f+pN
	4dDDK65mDp9avUkcQxNPI3VT2bSe0MG4z9POZfTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ec37810-f5f43b43-3fb9-43cd-87e5-101629ecfa96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8ea66912fe7f726728b5596c6d6d8d1b27dc693b8e412add1b4b31ca0e8047a
Date: Fri, 18 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647636084
