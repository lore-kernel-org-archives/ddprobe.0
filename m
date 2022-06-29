Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DA87A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656503212;
	h=To:Subject:From:Message-Id:Date;
	bh=c6QAQRO3sB3+d5KH9FYTmmSQFs4c5wRPPEeL1dDwrVw=;
	b=dbQqaZIKSev3/B5WOcIiG5q1NxbNfXVtrKmqjDLT/cy+5H4lCkVdpYGOWXYi2p+l
	jZz4pmdAiluuInEPMl3JRw4lNXtDu7/+qeUWY9XTBwXh/+g6C9jyWJ8o9b2KENWwlSQ
	DjEmcqTH3vKF8Qn/Xw5npWVBn5CogiG/ja4C6dhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656503212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6QAQRO3sB3+d5KH9FYTmmSQFs4c5wRPPEeL1dDwrVw=;
	b=IqZoqsNnjXZYhK7frbNk7R4ufsLUAy6PntLp6ns7EeuXG88MEM8ondCU1hSj2vRN
	mPmzcmd3BSVliGe/31p85xCpEjMXLFTkKMV3SuhdFaoTQKClS9u5Mge8QgRE+IyeDqT
	YPq74d2sGuG5jQTO2vvCFWd2SEXMpl4lMGrzABKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af4918da-54d9d4b4-8a7f-4a71-aebf-13ffa703e103-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8c72ff929bcfd1f0543afac33c15ccf7035be18821b85e78e2e48526af9fdfb
Date: Wed, 29 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656503212
