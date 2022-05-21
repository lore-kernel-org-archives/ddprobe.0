Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165477E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 05:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653112319;
	h=To:Subject:From:Message-Id:Date;
	bh=UxS5rOiOiW4IKd8n7eQ0NJXXz8G6iKdycUDEisKZwBQ=;
	b=ikt4GjniwMTdoysQKPtvm5TyeO7Vd4VEOYfSQvF/8U0o3itq/haDpHlWGk1ztWKD
	LpRn46bPX8RQk0yswI6hvfolZEa5wVa31OfVRSLEDU7+zlT21eexXGmqHvagC9DSOWP
	MLBTQmw+RI6aOhFm9VCCUyp9VS71gh3f39uHz8V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653112319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UxS5rOiOiW4IKd8n7eQ0NJXXz8G6iKdycUDEisKZwBQ=;
	b=JooTR7ct7+gFerxFYjwjFTq6bHiTPxy5iM8cccZWdRyKXPUJKAhMn7n0TI971nKC
	d2WOkxwlIW8Xk2Lnx0yWAT+Fp3ZJjHMyotrp5AQLDz2siALU4W9Lq7+ITDbZpw5qu8u
	JOM/9LeoG0BM89gGycJQDnb4ispX6zkVecHwbDtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e52c2d0c-1bab4c83-0cbf-4a06-8564-b690c872804f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ccc309eae5e2baefe9851c6b50a213d2b14d1b366ec5eebbbdf5168da3f28a
Date: Sat, 21 May 2022 05:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653112319
