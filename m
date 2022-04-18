Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D1B627
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 01:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650245638;
	h=To:Subject:From:Message-Id:Date;
	bh=tRR3bR88TaRysTDaDmO7d3Ja4YZo+vVqJOM/y9mazuc=;
	b=Se4lnBq0roiIhelOlap4Raq2WYZp7aXJjLnKgT2G9jBSfOty3FohnWuar4+DarvA
	MHht1cZ35Gnu5/bSld2XvjQ/RUW5MeRnYxQRIcyycFhJp8xPRI96gkeYL+aWsxG4ssl
	pQ6eKWgL1LLmYZL1oNUuTxQUpIvdx68g5roIMhe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650245638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tRR3bR88TaRysTDaDmO7d3Ja4YZo+vVqJOM/y9mazuc=;
	b=QInH/+Emr1Aw7O/xfOjMLI9A9wUDD0QzT235l8LfTbfOdfZKHkuDiHPGQqxNHFwz
	G0bfmLyyI4iJ9oNGJTKfCKvW0haHc+XA1DdI9we7QqKMbcF4czGm+9Pb/qwTv+sse8L
	memQ/Z2ojYlGz7du+fqrW/HgtzZxlP7CBpj7vKF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a4e18b1-310bb6d7-e156-416a-ad6a-bf0dcb3a13c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82a4e516d6689dd2d233f882a55c8f196f7f57c64200fc3bc5ac07eb469cd617
Date: Mon, 18 Apr 2022 01:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650245638
