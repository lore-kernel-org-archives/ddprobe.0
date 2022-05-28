Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0930E7B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653757979;
	h=To:Subject:From:Message-Id:Date;
	bh=GyVlFfhVvGsmpfsrwZQj6ZXCaht+qAH9CY4E5R5ymhQ=;
	b=FxIiJ56EHgn5kPkl0Gyo1FW1tOnPv43qXjl1vmLnRwbdaJ3vYuFkosTVZOdglTAA
	ZLhKlH3st8YK1zRV5H5O0eoqyREc6iderpq23wEN76hQJvWxAEilYiQxgrFmbh6QSzM
	8Cv5xAHwhyYOunSQ1Vo5uXJVTnkjJcR02L0REEWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653757979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyVlFfhVvGsmpfsrwZQj6ZXCaht+qAH9CY4E5R5ymhQ=;
	b=ipjD7QVGcy8xN5eTlPQAg+dUwnwGHh9aixP9tqUUhhhM2zGNlAk+Ieg38aFddV/p
	5/rkiLl+LVn6iNJzYQgd07Td7Zeh1CxbRpPCzhFFP9U2OjnZoOoKnSuhB1z99XaPJtl
	VsWZtczr3jA4K3vHeqKtdQwB5qSvr1bqg4cwQQoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810ba82a74-e63eb150-a5fb-4ef3-8ff8-bc166a97108d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab5393aa508e36317d272070fb199e6bf75920b6365306025330ada928ffd0e9
Date: Sat, 28 May 2022 17:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653757979
