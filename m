Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A22220F1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 05:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653973439;
	h=To:Subject:From:Message-Id:Date;
	bh=sNcGBC8AHkkSPzs5KgjHxjJAmZ6esHk7vgm23ISL1gw=;
	b=UaSyqVyxW/+aEE8iZOggBnou4UqLvi1z5B0SGnnbgp9tYSUnj+7D/wmtvk8d5F5Q
	lo/5YvCZEYO9X83A7FuKbBuzE8SjG07MyLOLP6c2nlyF43q3SDTjLqvM6H6RZSaEjdN
	4E9vKTcoT1bibliaBo5X4bTyzZVZxBnHWEheOp7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653973439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sNcGBC8AHkkSPzs5KgjHxjJAmZ6esHk7vgm23ISL1gw=;
	b=bTnbv0h1p2sTZD7XRWGtw0RJzRJnoHOSY7EoPRDRyh+h78e715Bvi8UumUFkQ8vO
	wPf2PSIdHkRIqf80he3mVZEmSMubxDE7RjxUKF43u6ByI8SxyyE/SNEI+GUskv8kswa
	jbtLjmnPRdMu2+G95F5VGsMJIs7Ji0p6GZFcSRtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181187fd333-12b28b1e-9897-414b-b773-b1963e5f66b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87d7a27b5559b74cf319f8cffe341c5b3d75000045db402ff6b9ced13c52dce
Date: Tue, 31 May 2022 05:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653973439
