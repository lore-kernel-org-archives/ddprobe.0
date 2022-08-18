Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D077C
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660813852;
	h=To:Subject:From:Message-Id:Date;
	bh=pm344XobDOzvuc1+usdRe2MqwWfXTRe3NjLbJ19+bQ0=;
	b=h52QUijB5zB+IA7GYVDwokhwA+02dBqxHKo8LRG7lrsut3TOdsI5/eKloyheeuf9
	K6b9A1dEGuhyUXRh7nEzohC5Nb1tDzAD4dqof7Mcay9CRHatP3h4SL8AUoOu6yL5VVA
	IZNK0QyUBnQisEJQwcywq7Fx/0VVNwD0QTMdTbsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660813852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pm344XobDOzvuc1+usdRe2MqwWfXTRe3NjLbJ19+bQ0=;
	b=fhY3LtwfWMjfpyEMu4kpUT2dWbUsMugX/xW5lXQ7Fcb4cPeM5kp9Spr7tdNNuSg6
	07Uvjwbb/d23/XqwINswDoQ4CJp937bVdmVmUNLBZJeK7OnVGU+koNoi5K93XEHrpuj
	ufVITM+qNyRt0ddqnuUWvqYZhckXlMLjmEKLZVCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0383fb6-254b40a2-0dbf-4ba3-b206-8572b8ed6036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b85fe40d617389f342ab30f9030e64e686505f16c3e20495e932cdfc64c95608
Date: Thu, 18 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660813852
