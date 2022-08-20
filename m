Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEEC2917
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661007052;
	h=To:Subject:From:Message-Id:Date;
	bh=T5LNUC5+/L06Q7MrWWo1g3Z4xNUXVURHvvURgn5sP90=;
	b=AadQwTkXCEdN2Z+jfdqCQHjsWQE09Jk+rOjs+oxWDgp1aMF/tpd95cv3TfgpS6eD
	kMfY7IkI6vGfcgNczuUqoECJSLIKjjeX3xYDR5IFImqVpGaZJwWJfAcnm8GQggTK3DV
	cbgtQV5QPm+Itni5yDMWrZdvG9JZzCSN3buOQ2yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661007052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T5LNUC5+/L06Q7MrWWo1g3Z4xNUXVURHvvURgn5sP90=;
	b=Odjz93D7e7sLL3D82VQH/7ZAFrxLK87C9Rwlqx/X035CNvOJRof7XqYcB4cJL9wg
	eNAfkXw+yGW1kmjD/QlXjUG3SxaCRTkQnh32EsrkRP2dhHOVmkqycnICuBPzpxvGPRD
	dIsD6O9AYIEjFQw1rGpHwdKM1X76RnqjnV9S4HDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbbc3f30-967f25df-14f9-4faf-8761-c9d0b31f28ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f5d476eb5b5b05b6ceb35d56d02e0288fa309c092023ba0351c1bcd2ee935b
Date: Sat, 20 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661007052
