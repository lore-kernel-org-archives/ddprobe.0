Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9523A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 06:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654495439;
	h=To:Subject:From:Message-Id:Date;
	bh=2YwhXhwdhEW/XyF67TuUJtkx+2czu+qQm/OZQf5YIiE=;
	b=Rt6PzzGgIQAOdob1ejhRyvNOgEFYB8iyx3AVe1Z2gHv4pQUKl5dmDf1VKl942xOh
	bZEFdWJxahCc3EsuknNilJ1zUySOP7IJQbDrqw+wK7Xd9jgyT5dwAFyZq7rhWln9LTC
	Btl9RcnF3dbKowhlFppCFR2CduyDqhl8KdMMheRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654495439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YwhXhwdhEW/XyF67TuUJtkx+2czu+qQm/OZQf5YIiE=;
	b=WLxENsa8Z4/f5Qsjxp8UPxwgcZQdu7YlHj3vExicKMwEk2PV7FxdbAGWNNQs4t6N
	yEt1cG7atIqMuVDB9UG9D6GcSS55dVRK5dYfUOPUPtqyuApT0L4n7xeI0YpDXmitTxN
	glLnyqa8pmI+tDJg255sA+Q09dlhNXSgIdv9HcHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181379ce979-c4494c13-da78-43d3-ae64-8e4af3130145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6428406cc602a303822a5360c2cd740f0a0f45ddf20cf66153a87a6623371326
Date: Mon, 6 Jun 2022 06:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654495439
