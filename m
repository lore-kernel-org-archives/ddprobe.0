Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A237185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653658739;
	h=To:Subject:From:Message-Id:Date;
	bh=mdKB91FFKFf9bbTN0JLL4mZFPwAh71lLfWuVSCY3zZo=;
	b=Npxq6dVTF82p5AslnGz8bDDR4MjPi33NzeYhgTV13y3GA/ZDnF3ypf26csISKypz
	Wd95hI+47/lPZcuDm0anCck1frGwC8Pk8tQiSRfpOFHxS4a5x3/vcCu4ycr1c2ubITQ
	Um1JWWkHVDvLYJVNdP7wKZx8mr/TlKAizNrLRXco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653658739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdKB91FFKFf9bbTN0JLL4mZFPwAh71lLfWuVSCY3zZo=;
	b=aq/y5J2SEeY/XjNodRp6JWY7CCdkj9kNTpMHiPh9I74sD/vSdtBfF9yq4WtSdYYd
	q5z/TqYJXJCzn2LpmORFmKjQiEi6najFRLvqDI4nE3kVIoI9AXoJxhpGmcjhQmbmCrm
	U+zRWjg47bOwkLeOX5iMJSpk85rDcUO2XP/2PFk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105bde23a-da750a36-d9e3-4908-9676-1aac89ba689e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ee6d4d77874a0b3bcd4463c347670525d05e975f8e326415a5947ec5a445865
Date: Fri, 27 May 2022 13:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653658739
