Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913B65C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658531213;
	h=To:Subject:From:Message-Id:Date;
	bh=jDolqA95z84d1HK2CZBSm9BvyhEYetyaYJzJdgPZmIk=;
	b=cpRTQQP0Btn+RfAUWcHKSUKiV9Ww0A9BCaSeTs/WmHhCBkn3tYJOFSRnPYmadWt2
	kQSe0sb3SN/eM16EaZ2Bd60dHCXNE+efDHcVajrIZtKGrtfUdEhrQDCj/VfrY6iIlx1
	8JUL5BDoDUCI0X2+Po4R7GVMH2BOoa/3ibbxGAXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658531213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jDolqA95z84d1HK2CZBSm9BvyhEYetyaYJzJdgPZmIk=;
	b=GTj3wprRdDEfyZmK6YexQs6GVax4Kp39TcsJFMwW3V8tAMoOYw2xlzxjYjfin0Ee
	xUZi6UuJ1Ah4ZJYvKiS+2+h0zzDbYGVdkBvRWiST/3lIT5RHd32G8zzJ3LyqvqjfiYJ
	3oSjSb/WmRxTnEjQ9f+nMkF3WjbERCWhUMOHJ5Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822829ec7a-275b4cd6-84e4-4260-a44e-889e589f90f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddbd399aa13eab97ee26eb76ba397e2fe0921f73f743b987015149dfc38fb5bf
Date: Fri, 22 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658531212
