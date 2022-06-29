Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA2E7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656497212;
	h=To:Subject:From:Message-Id:Date;
	bh=xP0URC04TtmTrh1wLZiws3VL1cxJtNloEIvPIfiwcf0=;
	b=BhfkjqS5btfUfdFeAwxqrmapzICwbYEJUc7Yd8qC0cEDYEVQ9ZA5LwkkCaVQp710
	6bdLPk0O3yQ9gYn6HMpXRXxBA0hyNjJLSOcjV2OIL/PrPbh4WQcJHIQw+G1h19PZIED
	GB0M14eUcs1/vEs3e87M3rHnQMKeKTjt8GgqGt+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656497212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xP0URC04TtmTrh1wLZiws3VL1cxJtNloEIvPIfiwcf0=;
	b=aaAFpjFnmUD7otqDRjEQHOXQlcnvdEnK6NaneybqA/sQs6JZYuBKD46oHR0qXRTq
	/NnajbzWPtZ/+1ha3kkg3Mncd91AThjqDeIGQjTavLlowFE0LEb4BdDRxzHCKaNgr3D
	vl7ueSgLdUKkuuxo1OPo8P5E4/DLFGw/IihKs1TU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aeed8b9c-720e584c-31df-46fc-a199-8b26bda48d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4312835131a8f02e4a2c0e0407cf32578def31d50cfdeb4ac0b1ecf7dea4d7ac
Date: Wed, 29 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656497212
