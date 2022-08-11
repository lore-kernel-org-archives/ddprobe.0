Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37340198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660192252;
	h=To:Subject:From:Message-Id:Date;
	bh=OoGiapDlH0ZEaDHZSC6dYBR+J+V26x5nn5Kd4e2imzY=;
	b=NF8U6F+3XO6w47QYN1gb+nkHuzCrTvF54mBQncFSDHQ1qUxhQ2isw2n8GyeNbimj
	ybYRhlMNc8GNhSjLtwhejLA4y3Rz/B+rcr/FN31FZ76/ZtFxrj3YJXlL3B8rZdA2tfT
	BaBBdsvkAvn1sjIFj4fukpYgB03ObO3bA5Hoa+NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660192252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OoGiapDlH0ZEaDHZSC6dYBR+J+V26x5nn5Kd4e2imzY=;
	b=VE2o9fPN6YReuRl9/yLDFiYao9rqMNVCo0YjDm++ofwc3IKMUQB4VNC61Wo5664z
	rMXfa5zke2W5V8O9ODx/PCOO01/0SBAJI7aXJ+8g8PbQ0CBhyce+b8ZyJGnEuF7zL9K
	n3Ps2l4yk3qVBOS0mzMSGEvrbGTvv+J0zr8ACIMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b2b62c1-ac7fc04d-5a8c-4012-9167-774b4864f571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef87ba440329de900f26bd08309ac81bed1bd71302926bb31b644cd3394d81bf
Date: Thu, 11 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660192252
