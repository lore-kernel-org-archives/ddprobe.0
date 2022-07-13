Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1759529A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657715212;
	h=To:Subject:From:Message-Id:Date;
	bh=AbgHOzl0XUE4VxY7gaPVU5rAHA71anBTgQ0KW7Ni15g=;
	b=LMmDY5AOP0RlS78iM/9okUGXLFqGCuJBBz/v3JnbXppcNQTlbgv8lNyZJQFAeYJb
	hwDij5UdH/EWnMez3vdM7SQXGGX2Xmr2kEmUdxAKbm1IHrXxiJcnbDu6l8yhOr6oRx1
	/RRniEyhZj/UpPogEgDRRDaw6q4gmRU6RWGV/YX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657715212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AbgHOzl0XUE4VxY7gaPVU5rAHA71anBTgQ0KW7Ni15g=;
	b=G7fAoD45aQpdz0CcaPvpgvS2zP0b1Mg3kUbEKLxx8CliM0pkg0eTbNXS6WWuBJbN
	Z85ps1su4csmjE0xvkTV6LhjUTsBaEtRBuW21MWwi4HAy624nmAVbES7HgdVxCUg6Dk
	D6tjNriD1y2T25Y7topumNsBfRbUOfKbQ0qWOI7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f786bff1-c70cc3f2-d3d1-40ad-938f-6018b920bd0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93d4c992bbfe90750ed95975b79daa6ed134348c3af8a63f65b7644db5005a1a
Date: Wed, 13 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657715212
