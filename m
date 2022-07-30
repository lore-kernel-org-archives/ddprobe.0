Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22C41360
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659162653;
	h=To:Subject:From:Message-Id:Date;
	bh=7U/JZ/PMatsvHrV1LrRNAwsZ+hW9HLjNVoaPrcC5saw=;
	b=A7aKVV2V7o2bX1N0dvp6+0eXixncXEozMfCTm0sJ+fhy4mPNcX2p7tCfHt5i6NZm
	52RyUbyrs+3hdUcZQZPqEdbqXZl1opnt+imS6SRfQTJ2ctSgq+UR95wlHGZgr9wlf5l
	crFb2O84Q+f10FexCsjzR9YrXR7trzI2+DqEhBYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659162653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7U/JZ/PMatsvHrV1LrRNAwsZ+hW9HLjNVoaPrcC5saw=;
	b=HWXC4tGrIC6yO6BaGjkx3goGIvEJkZCQo8i6CXd7Q9Hsfh2mGpF5AMxL+KLEbG7F
	z4jogztSr9atVilGE3FS4ybdH1QMopjtCQvKUNf8zvF8A+YcG/gftUvwuPaO1ycerk2
	IZmrGnfryxDTQA3U/rM5txeOQ2645v1C7nyTQTQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824dccf042-8c2b42a7-4f97-4e59-8833-1933b4fad807-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff597d359faf70311eba4ec8409ae352959d2a44ac83c951aa1a6f5997a53136
Date: Sat, 30 Jul 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659162652
