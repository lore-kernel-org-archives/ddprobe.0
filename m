Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507F8366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 05:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654061159;
	h=To:Subject:From:Message-Id:Date;
	bh=mFdITZrWVbsRtNXOmzLymDPlVqiK6uemSMamOwvIr1k=;
	b=Mr7gD/Vko+1MG2JDdBDcMJgTJ/QJpGEBpf1f4iBT22xW8YyZf+Fw95ozkk2W0vp8
	vZ6GB2nbQeNnlGupQ9RY8zhGB2Mo4tp/s4G9eYdiK/arhFvzVyWhnl8CT95grGOHZNp
	dmm6wtsN1vlmDtHRZHeWBbj0TQQ9PRUYrsdCr9jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654061159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mFdITZrWVbsRtNXOmzLymDPlVqiK6uemSMamOwvIr1k=;
	b=gxJzKO5dZ4BjYA06rxYvQWs9bw4q0e3CJCubNn1TC0N4c3UYmXUK3pUCuUjmwIXe
	YoA1PdHt9xlInZ1qDGwe0y2FCjatdpvNcjhqq7CJBe/SHGjNnGV+fxY+ma+KKtKZrcE
	Iy9tmKuJn7QkRZBV7NbnhwhWmuJ9iKnf7a1a2uCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811dba539f-4a73e8f8-1c32-40e9-8426-0223c0413711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fc47ccc01dc5e6d78bdfafcd0c0c15c67e9afd9140b6e19111b1e065482332b
Date: Wed, 1 Jun 2022 05:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654061159
