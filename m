Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017131FA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654444559;
	h=To:Subject:From:Message-Id:Date;
	bh=b0OWy+X9JblmymXDZRWPc3ksqBRSrwzwUdTOZtBs1A8=;
	b=YZLwjyQ+WLzn5a5JXR/riLZFhhQ044olcfVEUXLzD7lT9cMlKJWWf9XfqhLrgGQ0
	STLXTFax4XQFmQfKONKUqN2il2+nvRqYFu/0oGhspv9PbjX8ua7tZJ7PGDQT5FXzuNU
	MORY7yV1Dgr7ehvgviUM6VJhw0kNo20B49MBayFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654444559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b0OWy+X9JblmymXDZRWPc3ksqBRSrwzwUdTOZtBs1A8=;
	b=F8nmm/vaWudtTw6vAOUsM6LgbSk5MWwj42OF82LLQaCT2IKjkpa69qp1didhyKB8
	Ujq30X7VDgDOUPAYG9k6vDSyZw6YNS5elFo7FP6B/Qf2BLQja3vaGIDR+joz+ACoDgC
	lsEbPjY+02Mij7wary1mGDQ6AfilRUvcIpsLQrU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134948be5-2af86f96-2b65-475f-afdf-7e819aa5cbc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 905984dda197794fabb18f90c532ed4e51b0d07342fde5f085382a93ba749eda
Date: Sun, 5 Jun 2022 15:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654444559
