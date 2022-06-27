Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1033229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656339412;
	h=To:Subject:From:Message-Id:Date;
	bh=0LVyez6VshhjcAysoCKCXsni0SSnU80b1r4rUAzp//U=;
	b=GVIHgzRJc8LWb4HatmA+G0mjEksX0YUYUJDApNW3h6JF3AZtd1Yb2f6UGsAmH0rT
	6fVUDLxK0+ryT2MJxcAcIuR8QVD1XmJF5WB12EJlyiBWQAvfw15ZIb8kBCHJY6Mqfp3
	nvllsM8vq0sFvzsQ0dvHd1QoV3qC6xXNegD/7utA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656339412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LVyez6VshhjcAysoCKCXsni0SSnU80b1r4rUAzp//U=;
	b=BcWpSeSnUCFXiwtCG8AIChPHWBX/xnHoTsYdrbpwvrEaqD1GIcLVBnMMzTz+UCfc
	Cysd4x0tY5Jm6f0XYb7xMcAP4kVbGcwY7CXfg2Kmq+V9uOrV2NfkMYjutXHb9y8HcdM
	/l6BDfGjhQITK7uGqEWML5r0fGN1iSDytY7YuXsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a585b52a-d66eed6b-85a0-4f15-a05a-cbbca94e5a66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 053f6aab23b2859cb112c0de9a9947a2ad5673df0a934e1fb4d16a2cd8d4fee8
Date: Mon, 27 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656339412
