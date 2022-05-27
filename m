Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53486468F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 03:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653620939;
	h=To:Subject:From:Message-Id:Date;
	bh=0cIzFuE8lEPAViKvSBdn9omilxF4hh9h4C0KRPLo3zM=;
	b=B6ImpETWdy0473Dinv8Zh1Wbn8qTF4tw9Fd/67DsUb05AUdU9rsbETCkqFcbv5es
	yn1o2E0a59uYFzuFHlGgXQ5OkmH07tAV5KJ8HkU6LpwBqJCuyYTIDcXuFYoqjepNyxk
	fi6V/YjmO1P/98LtpayA/3Vdntj/XCE8dudyLstA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653620939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cIzFuE8lEPAViKvSBdn9omilxF4hh9h4C0KRPLo3zM=;
	b=jkysyNu3dDhol+45LUsbu7MEHrgHvptbLKovAWayKwM5MpKqfeltParWH0AjcdeY
	2MBLk4e349jhS4PDBzT32e50WytZzDjLGSe27LdAKSHmDrjKsH5Rrl51iECGGFVShHc
	EZ4/g3p/YKJvJA1N0l7opJRpDtMg5/Y9ZJMAfhUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181037d1a2d-90f01b3c-7736-44bb-8fab-f5300eb58e89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0979135a40e12cfd275934f0709128dd7f7d2a442d15a9a557a149b0c5b4f00
Date: Fri, 27 May 2022 03:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653620939
