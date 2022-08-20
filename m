Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4884210D
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660996853;
	h=To:Subject:From:Message-Id:Date;
	bh=ybaR9DrIqtmJBZHMsmc2cqzbJk77kZJs3K1QJRI/9kY=;
	b=NgI78d2WzFXr4mjjbvxsWuB+9H5wsG+sjyq2pcEnLP3h81a1kdJZOON6aaL0YqnK
	MlV+MzAIDm5fjaklwdfccKuEL7jYx54LTEC/5XT13Ps6RxZ/9UobyAaGUnX2m75Mhq9
	umH7Xa38FHc65bpbsdCoP7ZVWfZqNAsOrrZV2bk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660996853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ybaR9DrIqtmJBZHMsmc2cqzbJk77kZJs3K1QJRI/9kY=;
	b=YXResNRZvFcAj4ruSOBPjXjhpY4vtJflUya7LiZV4aM8G3/Zm2YrwXn6Fqp7Hzkz
	1Xm1fTx5mhhKPrvcYmfOEmz2m1TmtLsAkTLNc+V2L1EioJZCG5avFFD95iiAPerK0QI
	0lM+l6PDP5G8eZU5PtjxEPk0goWC3V+lG5pT6QZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb209ba9-87fb7483-fed5-480a-bb30-6d3f82803927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b60e1a27a67fd844bb644c26690e34a334b3019e06892252ab0da9d80197a4bd
Date: Sat, 20 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660996852
