Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCA315A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659231053;
	h=To:Subject:From:Message-Id:Date;
	bh=SRNASfJRTK/ZzBAEUH15JlZIKQnZxf1rkSDF2tTeDL8=;
	b=QnGmR74UKXtN747Ki57sJPjCbh3PvBu6RIQ5nwoPii+nR6VHEaSkdcHv3mHAPwXd
	Nmr3efFEEYrUFO1GINgbI8dq8TtBPQkTQflfNHoyl49eMcuMdYtv2ATCemNxIvbl8to
	ozI3T76Jvfvw/KX+5aC/1eDI2+Ra17UGxBSU7qKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659231053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SRNASfJRTK/ZzBAEUH15JlZIKQnZxf1rkSDF2tTeDL8=;
	b=BotIR7vBepbD3U+zCKeLUYAD3oGQsITzbUJc5c9/SLrCz58UKFsoPlQfPkvEQinR
	MGz1mJDyClhBRWvqKzgkxi2dOI5w29m2W+nwqA8f7NaWqESV+UW2DHqsAxzmTxZ42+f
	CtvdJmIFfDEdLkkEjCv9F9Zmq16XTKxgYtPupzk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251e0a379-4d107b31-4c0e-4361-a87d-b66155789823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0da045b0d565b6e58af2a880eede97878bb38830ddbb2e60035bcd085f0c9350
Date: Sun, 31 Jul 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659231052
