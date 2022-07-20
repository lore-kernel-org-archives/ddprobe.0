Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E0F4405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658317012;
	h=To:Subject:From:Message-Id:Date;
	bh=vy+UvXdBHOpHbOZB+QFBk2pyFIMTKuSFcwYrQeD9TmY=;
	b=RBVuS8Tc5O/4LGxe3eU4ga48WvkunceESfGzPsgNr7J6YDrEZ3aXB8jZEVtOoIQd
	iEnatIRrSAiKW0mM3NiPWSx1r3do7gD41CYiLH9k89Qz6QB6JdbjFmtz2BJabt1sMB5
	BhBslVAvhMiHye9o5Rm5bCVbfktBDaTMCLxY7cP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658317012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vy+UvXdBHOpHbOZB+QFBk2pyFIMTKuSFcwYrQeD9TmY=;
	b=AIDufHn29UbiqZpc3R2o5tATIBxoz19Ynu1NxJq9T2yvKUobERN/6QwsNZWZ+urO
	hzgS0nSB4P2ZNTJpSB686vCVTaBHHE/JwWPt0eQKGttRFZN4t50fPDmQsRsbRgUlqdM
	2xqTJcLimB7ebKYcWbsIAYsO2GGdZal5NP0eCwxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b657d29-d4bb26ed-c81d-41ba-a002-49ff7986fc6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 850afc0316de3597229bbb7e2c9df1a8a853d721087ea94d5aca448131630a21
Date: Wed, 20 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658317012
