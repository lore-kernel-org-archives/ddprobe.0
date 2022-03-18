Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94512F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647594384;
	h=To:Subject:From:Message-Id:Date;
	bh=XFQ7tG8tg+woBwr2QHofxHuhhGOIHBxQpV3KawoshV4=;
	b=UDDjxx7HbsMhyWeSOGEcfYVVk8lJqT/PejfLx8J1IqrfrBtcPzx5i/InYlbdUwYa
	yLoqAlHfhcnLUwZ8aztNSKTsEbitbw1E6QdFnfXLmnpco3RUO8eGd6lwbCtktKIW88H
	bjiYplK4maFGBuqZjXKoCvAPCU83xN9l3kaIWS1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647594384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XFQ7tG8tg+woBwr2QHofxHuhhGOIHBxQpV3KawoshV4=;
	b=MyfTf0s3jIvUhgBI/5/dMxJ6C7JVbv84W5QA1gcpw1PnkPT28YvrD5k/e+hDjYBg
	AXarJza2HqYO973S/XPvh3xFT7vPyTCLWuO38tvxsTD13vbJZOgNoqZdyeKxAp5G1/V
	XzQLbKdvWLmrUT6Cmk0f7Yly+oZw8RhdKDRnw5P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c472d79-37bb11fe-f1cf-4b37-9be4-9ee576f2d356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20778b6535ae0c0482a500e4f055115128f341d33ecf034e6c9cf1ac2b9844cc
Date: Fri, 18 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647594384
