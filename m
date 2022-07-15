Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2E62F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657888012;
	h=To:Subject:From:Message-Id:Date;
	bh=R5RQHukk95gavQb+lhvMUKIj+t3818py3b7hzBDC/Hc=;
	b=EaErcd1Ikcgg4iC8oU4Gi17AONnpe/rR0PHCXTBZoonzpcsVLX5rNCl52SvMrQw2
	iJVvqDavRusqBY0tecXXdEuoVCvurQt8JsVtZ+ZROOnYo8jdziYqYyyrBOPf0ZUe4UM
	vsJvEwui/GxOmVVGEhvWak+VIhFX9uqEsX+oEOyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657888012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R5RQHukk95gavQb+lhvMUKIj+t3818py3b7hzBDC/Hc=;
	b=Tg0+E4RRjpeaEAmZH8ojFS/wNuT4L5kOk7xFzhrztlRbiGD8aZnKTYWz0Y4QpvHb
	8+G5Q9sC36Qe2bOIO43lpJFrtd95xpxtcBcAUD+6CB/f4fGXwPKzzFa9P3IMA0WZc1N
	WOo0E2JXgJ9HGGPW0tFsE5F/ssTxXTe2J5MPofKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201d377f3-b84f296f-3c17-40df-85ff-6685cbac4450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6639dd0e41c10e6503a2fadb969eb03dc5014b780e11e4fc562631026f92adc1
Date: Fri, 15 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657888012
