Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D617B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 22:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655592839;
	h=To:Subject:From:Message-Id:Date;
	bh=VX2Aj2BugvDw/VJ/0uDyInoHMcccecFZxxjy64Br+Kc=;
	b=FlsDaaV35gd8vrObmUW8C3+JNj57fZuGtCob9VIvCnuwv64H3HeLQCPwYMpFdJ6p
	grmajTO//DAi5XmGcD8kKyevxzaizN6Q3VRgEPUY9a4gz6DhYa3MyD1c4dr85Z426sO
	5abasFR2vdQfdPmHMvgH/Dn10mBsMnzDupiTGMKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655592839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VX2Aj2BugvDw/VJ/0uDyInoHMcccecFZxxjy64Br+Kc=;
	b=W0PzJkZNngInYcRUqNlQIeOSQ4SsozsRcC6ASG6x/uKRFurBjHf9VoITPmrP+MnY
	UJXzzoPyZgH8DgGqGGOgyiAShzm1/N90vXacQs57PdE4AcmllBzknOXoolcQaTcGG5L
	4ud2qQCU/liPygDYlJJSvxY+jDcWN1SgYH9ytsYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817905e88c-6ff4e5e9-9d11-491f-80af-b18ae5ec628a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66635d0b9c00e8eeb5c2e0aeac171e2e9a9e164a6d550fda7cdc68b3fa306748
Date: Sat, 18 Jun 2022 22:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655592839
