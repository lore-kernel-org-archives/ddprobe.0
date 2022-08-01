Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552537F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659337252;
	h=To:Subject:From:Message-Id:Date;
	bh=QcL/C1kLiriTj/DnZ5xgK92/V5LySyuaud5lezWlsd0=;
	b=NYQqvQn0uJjoyKZTCqFJFFLquaqK8JHMLwC/OUgBQgglygUUASR2bKCcSir6/z9j
	OTaGR9v8sITWVIw6kAP17f8pCkkYSSjPJyFJtnW6CoHImDGVrhaLD66504clvgTolWM
	if9pXZ3uogwcyBOXMTzadndKEG2OBoNIxxTtDMXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659337252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QcL/C1kLiriTj/DnZ5xgK92/V5LySyuaud5lezWlsd0=;
	b=J9kxS3acvmWlnuF9yzNp1OrUIs/C8tTPpoDoA3FgU6yI6YUlsbp9uhEzexy7i4uL
	+ChY1GCS1H+Ym5niisLwlccF5nq5J3F6JKOvrIEfhCFP92TvDhH4bxJ0vGEcrTY0bec
	WjZdb5OXc6o67Z4I33wylKBZDz+fdd/6ZWyYz1iE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258351ea1-290e55c1-02ee-4b6c-9d8a-12f2ad97be7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69bf9a9d93baa94b7b5c41e673e884646839658f75fe3de76edf34f32a74de36
Date: Mon, 1 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659337252
