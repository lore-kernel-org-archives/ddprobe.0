Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F99B7F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659600653;
	h=To:Subject:From:Message-Id:Date;
	bh=oNDgRSatmxu7jcwCYnwwM/zvHjN6TY7wJXmRyUhHE8A=;
	b=BZKZ/vSVaVoU9F8E2LFsTrJVHk0hBW+AmJEcCWF0M7PRcdgDtm7bqIz/L8UIUTQn
	o5MXxyr2giA+OkjdYhEIdJxhyCLx8BkzolXVX9vvWidb7HHIt+gnQGbiPJSKxn3cxXQ
	6cHUfxC/vbqiohxx2yMXy4k3Dq7EPtp+ft+NNj8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659600653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oNDgRSatmxu7jcwCYnwwM/zvHjN6TY7wJXmRyUhHE8A=;
	b=jZrOvCwdTa5pl7bvqPaBL3jDQvr/Zpw2MmbkeOsdUpWt9N2kxfJ4bNzBjlfAnuQv
	jMj52CS+ji3KC3+AzhQLM2xyp4kiIBlMj3VnodK+attxAWBWmgjRzuWsJwaqif3rUU8
	XHisaRYo5w5NSSbvdvzwGvD9g0Fdei40T8p1Tu/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267e8494a-dc37a214-dfc5-4f58-93b9-182f4621aa2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c526c99df9909bbf743ed5a5a45035e988deef6354508c53107f898eca6bf8f
Date: Thu, 4 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659600652
