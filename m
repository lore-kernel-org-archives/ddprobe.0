Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3F97E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658588212;
	h=To:Subject:From:Message-Id:Date;
	bh=XBZp4qQNR2Rq7ctQmFKNUXGFgW4geVE7JzVThs5shzE=;
	b=H3ZQGeP5/zN8T54I/TU8ruusvaJ2NzcL58EHNvOpQnwe0oANjeBQBR9tS52ZvLpW
	v4jijYbaxyQrSARWoSUC8kcos6bksmd0iGVVq5hvG3Ncvyb0ozAG8lX46eca4H+663V
	kpjb2nFhYVXeoNkT6G+eOCY9zZXwYwdTmAWq7o7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658588212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBZp4qQNR2Rq7ctQmFKNUXGFgW4geVE7JzVThs5shzE=;
	b=gPaR2V0H15fOL96NHkHxegriavG72sDhLZUYugBoZuGtvyOdTpo9YHHSr96A+x8h
	XFMgVQmnTegSL5l1T0/HIwrjHWjglid8Qj+s3X4kvimOYWdnfNHvYCWHRcK5M5fvuTO
	qxuFepXzPU1kqWWjN84BAsbpBcXp9EGA1Pk1GVJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b8fac1b-d0c6d4cd-f034-4d97-bffb-87f563f7484c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 446c5337ffbbfd3d8a1188026abeb45fcc8db2127efa6d3a5ebf0cbbe99b7a57
Date: Sat, 23 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658588212
