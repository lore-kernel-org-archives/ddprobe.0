Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A133ED4
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661251252;
	h=To:Subject:From:Message-Id:Date;
	bh=JLyzox3GxXg2XnidAPuJroqp4Lb4zJv44V5rHIaGHXM=;
	b=TlzNrxyLsacwQ4/Ac+uaiGMZPgWst3YHxNVcWdhohcw2u8aw3o/4P9xMPy/K84Pa
	jiEdd2v3EVvON5RmjQmKELanx++ZrCW/rNvEdcJ5+gNv0AQ7wnA0AyV7+OptaSjmeIy
	OlykZFIWHpT+hDQ8QIHT7IUiwABc3rtwR0pVShtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661251252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JLyzox3GxXg2XnidAPuJroqp4Lb4zJv44V5rHIaGHXM=;
	b=dI6qd2YPdTwB6+c1q2uXefk1Www9aonvto92/EdSdDgDY5lKkUAlfPF0b6caIWT6
	zcG+2h7zxZdqeckpqRQEDafQ7nY2o8i1PSfh6zQQaCY5ZN+WmMTQY8loP+1WBSbBhRn
	lgmcwRbrAhnBlUXvZfDYxPZnzwk/298h6LuMdMAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca4a7132-9ebec857-cb8f-461a-856e-47de0a3a84c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e71fc42ffd2902b6f3a25898859eebc1e430a0e48bc7e7de29c41599baeee3d
Date: Tue, 23 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661251252
