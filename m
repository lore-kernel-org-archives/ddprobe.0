Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10A805
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658836612;
	h=To:Subject:From:Message-Id:Date;
	bh=/Kkk9xzo9/KO+MOhhYkdqIsPX3ZvF+xWdgMHH6rAwWM=;
	b=GyMhpVn67xUGMRIPIlJw5Oywtf0OjGxG0wU1LfQPm0c5J6UjvsQjIshd5BBuSrBl
	QHOImfhW8PYluvjObdP2SXx7nhUQP5W7uBw/CDSy45Elh8l3TDT/zv7zp8EMb5DAuVk
	1lME/BWMB4NbTflfrOByRAq3CWcTS9u0p+BEtCwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658836612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Kkk9xzo9/KO+MOhhYkdqIsPX3ZvF+xWdgMHH6rAwWM=;
	b=YjOrqys3jAkSHt60I7kmlAET+g1/+wDze6H0dHNKSaRz4apH6ocaeiCa1fXbjyQk
	WNAyXyooz6gaXj5/KWKC/cYkLgEE9JCp2zxOPLDt3D7HOk0d6upo6P/Q5gctwT1mY3l
	Qr1UFTIRs7hfu6evP2AInMozHgFZ1CjDBuY2sW7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a5df4bb-fc1da5ba-1890-4023-b07b-49e200876868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b6562123fd86514c2af05198dec94d7ae70ab62ad87738d3b08f23bd2944b7d
Date: Tue, 26 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658836612
