Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064611840
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 02:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655173079;
	h=To:Subject:From:Message-Id:Date;
	bh=EHJmSw1b7CPWLEXWiRWmA8JUfmlcW6KfmAm8ClKk5k8=;
	b=Nv2us1mPkBeh/Cfn3pq9rAAd4EA6rSixAuPt2FYjEd4sle8IpAYTgy4dUXBobGSX
	39RCMYHH4mbExqUPR6tehBkPohFt/tjNpX1uKnaolLZagdJaHNKP03KumkO/GDuMqfJ
	hwi/8QiGFyQEgaj2xJqwhHymczobWuRa+JURAqZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655173079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHJmSw1b7CPWLEXWiRWmA8JUfmlcW6KfmAm8ClKk5k8=;
	b=NmsnQCRp06RWm0kIxLcL9qowZWTlHoOlQT565QuAdKXIRarXs3n495Du4TBBqSiH
	IXdk463zZHe2vB+ylcvzLKTmBRJvZiLitI5LYJbC2Prp2NtqnQcJeI1Z4swSANbRx2D
	oowEzCLJKIsJmJ2ST1ptPUoJarS6rDV8Bjn4AhMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816000e0c5-32b529ca-cef3-4452-9498-10703b107501-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 646e43fb39f5b5db73137fa06d60223cb49da37ff511095bb6b0e5a8f75d5c47
Date: Tue, 14 Jun 2022 02:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655173079
