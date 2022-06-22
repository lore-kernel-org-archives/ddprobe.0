Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B899B10F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 03:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655867459;
	h=To:Subject:From:Message-Id:Date;
	bh=MfAljLLUnjG0+sratXjoOLQBobKYlioMmokrYxZtXQI=;
	b=AiFQ8VCd+KrX25L1a5LPSRpjRSGO0SFqhiaSx1iYbBjXRYSMS28Q0vGKS/TDSCqd
	YvZ9QrV9lS1f+SrRw0vV+5CRcSDXrdxBsXTtscDjnIyxfoyQ7HrAyMqZ0xfpk4jx8ru
	Jw1jQ+6wqwPD3wslae42XkAPdQJoyKnvsCt0Bwbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655867459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MfAljLLUnjG0+sratXjoOLQBobKYlioMmokrYxZtXQI=;
	b=jvNXzIYRDcGC+wUk1wMWpmvVgNdrlAcz/Agk2lnsllXOkWbYb9a2XSvhAiY/G/Sg
	Zt6YaInCLhm+8iXlaC9RXYd5Qwvg6Z92XSmhsV0kkcjJE2i4y2d3T3ZFBLmpR6dQoM6
	yQwhsr2QlkyOhQtwJtdkSTSgNQVUn+c+2h/eYeRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181896446dd-ef8a64eb-e110-473d-8338-f03f12752b0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b0e74e201c8252293b481817b6a60e27e72d6f74e3505c820cf19c33c852451
Date: Wed, 22 Jun 2022 03:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655867459
