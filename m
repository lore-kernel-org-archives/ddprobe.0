Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1E61841
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 23:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652052118;
	h=To:Subject:From:Message-Id:Date;
	bh=MrZE1p5H/V+bJyA1U1FXiQk8pZxXo/CA1GeDYpKENr0=;
	b=I/xnvN2TbcRtmKY53y+kHLy6iB2CviGboaLtNuHc2SMQpANbDA7rjbLftmGM7ke8
	SRu9nN6UiR0CIue/4rBedW9V1OC9+EWzx+jEush73R/6zikzuI+1hy7XhZ9O22r1JsQ
	1JfWNC7T9q8eh+2MlXnzPm+jxdNRYjwLpXWTQa/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652052118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MrZE1p5H/V+bJyA1U1FXiQk8pZxXo/CA1GeDYpKENr0=;
	b=NH3GgUKAnjRn03DRDVmSsNY5AWGvSiPVBoAjaSy1pjosTFxYAbOYvOK5EK/MulBv
	t2BqXa+qUymWr93Oieei2jKlb0jUqCgGsSizfRS/SCs/YUWv2ghuvGU2FJFLiwnPMvR
	asgPg1xGyU8LzjGnDS1jN5kpIDVj9H7ny+KvngiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5facad3-bcc2915b-a00f-4415-938e-6b1fa431fba3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25b8f75095dca121bc63325c94fcbdb64d1bcdfafad742b8e8e9e6366d1e781e
Date: Sun, 8 May 2022 23:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652052118
