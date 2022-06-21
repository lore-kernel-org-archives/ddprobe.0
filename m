Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCF7A28
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 02:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655777819;
	h=To:Subject:From:Message-Id:Date;
	bh=1lvGtQQn6m33Im+c+Wev3Z7NqV7EBlSg4Hp3Xw68Kpw=;
	b=N5ZkPBxwShWm2A4KGCMkAQcaHJx+7yA0giw1oE2WFjAySEu9xjowxcHT7gm5MQhd
	+JvUwlx1LuTwu2RTKN+SR8CJ9lrxvhCpoo/s6gJEoZ1myX8RtiwoV5ffz0zaf59yxZG
	3OiwPSqMVkhIb+JQyQNuQ8NEY55Cw8MtCNEqvmtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655777819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1lvGtQQn6m33Im+c+Wev3Z7NqV7EBlSg4Hp3Xw68Kpw=;
	b=KjKey73d8MM1rRfmGN68E+qnD527ltXKzOP4Qv/B5HbLKAe8wk+uUXXuztTAMoGL
	w9lefySDJQL1E1pLvtZROojQxnUF5iELBaHvY8W2Q8gKnphxZaLQDG+ml1Gq+ofuI3p
	XOPHmRxPb4ttlpdNz2yp6h+bW7RLtXXXEaHjAUfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181840c7a9d-88927be4-1fc9-4a6f-a643-126a916b1e12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e9a20ee9b9d3512f7cad90e46e94bdd02afeaec30562f7c20d7c517bc448d0e
Date: Tue, 21 Jun 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655777819
