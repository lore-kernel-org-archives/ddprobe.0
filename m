Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100B67FC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658107012;
	h=To:Subject:From:Message-Id:Date;
	bh=zVpcfIcABPLROZJdoOmIXoEEiE+4QPtvzEBxOgm172E=;
	b=RJkiX85aTJ3c2KBL+oB6Say3XZe0qo/zfbqxMQNC89nWBgX/f45Hxl7+YQMAirsh
	PqXqyXew7O06tdNOv+yWnM+6MxuRUZDanG7+Ut86PDotsk2dY+6Y/PB1Q8wVXUAn3YL
	DOyvWGAT5IrADIE60dLRi8hBfU2HWg+sDnEqGJ1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658107012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zVpcfIcABPLROZJdoOmIXoEEiE+4QPtvzEBxOgm172E=;
	b=b7R1uGpqDDr1kTtPPRwHFlLKNGwEmYN7KHHrtri/eAYb3K9RA2tZt8q8u5xw5w7E
	wpc7bfHszvXB1J0fyJdJX3Dbobrxp4NBczT+49oB1vUCL3dJwOt9jLHnGVEn5W36b0a
	B4dsolUtSZQFA6ldFIJLBjzNjogm+C+d7BDLgMc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ee1250b-f362dec1-4c64-4488-93e4-25dde64d96bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83488d1eeaad8ae772d364250bb01d79b3a3b76c19d2cfc424b9472b4d5a360
Date: Mon, 18 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658107012
