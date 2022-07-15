Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C66643
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657859812;
	h=To:Subject:From:Message-Id:Date;
	bh=RstaZRC4ZxZwJEmFBR+UlWvdUPpX0ntIDRLtcOwNwtk=;
	b=bLWpE7Im5bfdIxbdyO4xJlWgzvaPMIK5tlPdF+A+yJbHiz1nH6XPRxzONXXiSBJs
	qp78IcaZ2LhX+smE7/KZiiezqR6tk6L9TOzRFNCT/qWgExzhPwRP2bbX5Z0DA3SMtdY
	dd9ECOnX/VDWmGCA+gHTyMOn1IF0e8qMgjRl0RCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657859812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RstaZRC4ZxZwJEmFBR+UlWvdUPpX0ntIDRLtcOwNwtk=;
	b=QHD0FbXStbJYsanD+q4QljDNrow9CXOQKVDPY/wUWTx0jtLUJtZYjiGc/vJENwvZ
	FpI/KsSLSOquclrYkDFI5gSoGeLZlqC0TH8uQnjSvQeebiK6He/ni8dXFzFrgFh6C8K
	YlGMRNLS5IV4wYcQrlL+co+r3AtjC74IGkyGT8F4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200252c26-a9789ce2-e2d2-4b10-b8f8-dee4964d3729-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57bb284e4fa6ccf3358e04d5df8f3f57f7137519645ce7a8438aa6dc633aa845
Date: Fri, 15 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657859812
