Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD5F17D5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656922012;
	h=To:Subject:From:Message-Id:Date;
	bh=lCRsnU8JmaySwm81GubvbpAprA9YROV1itLG/QRR7wQ=;
	b=aNPp29Hqq9WSpfvX8pZcKbuEoWS9zJa1uTp0hr+4Vk8c2pDjqfcGpGaBC0RFQ4vG
	+K8/uDrWiUKiK7YzkETsInujbCeIhH/2XjRkKm2zB5VcNbTyhghw5K2RV2dqsU+wjMM
	wwd33upNV23hFMAe5vAi6hyzW2JeKzmmChGSMik8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656922012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lCRsnU8JmaySwm81GubvbpAprA9YROV1itLG/QRR7wQ=;
	b=SyzLKsGlaGFiwJs8KV7CDtTp0h8/sh/eU1U4SBC8LN/15LG86eB0Rt3nwjx5sWcs
	n8sCSy6fBGBXBYQfM2sVl79MxjETGH08nQvAK8NsGEw5rz4Qedjsk61QGP2IA67ERkN
	G3nji6D+gTobP/0OeSjR3NAVFJhPOIPfAhdZzhQI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c83f7a67-cda1ce1c-4aeb-4759-9f85-16cf177d938f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d96b93ccedd10a26f238ae890fcbac6492b245f51051833a208698248166d13e
Date: Mon, 4 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656922012
