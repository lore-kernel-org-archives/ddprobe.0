Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B78E1107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659772252;
	h=To:Subject:From:Message-Id:Date;
	bh=39zL1DMdW0TNvO70M9F4AMue+RDgs65MQX4Jh21l5jk=;
	b=Biu67shzi5OB6X8oB7MIRjKRaZM+SG2LTqHYR4dWXafWfCVeVoEJn/OXv1gDM6UV
	DybmJ5pSaXLXa5+cL4RJRNVE4BnauWgZErB5XPoSAE31g1dm7PhNMyCAat3Avcu077I
	SpSEzyau4k3UNYFi6IrfcbWFU9Awlf8HKGQvYpOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659772252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=39zL1DMdW0TNvO70M9F4AMue+RDgs65MQX4Jh21l5jk=;
	b=gP+mM0NL/Hc5tJnCwkT4aLfb0H8st6xnLwIuFKxNTDa1O6c/FnBqPyLlYlO/gmO4
	uipl43Ssm5jfC14H8pz1/pC7XhvGMfxdIxKXfzoA07zbJfxBcdIg+C5zCHIiNlmNnEg
	3ALmAtD/jYjIXa7kj4+qY1PAKj23Fj6chCTn8EWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827222b1a9-fab8de86-b1bc-4d61-9279-bded4f038016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e862789e6550f02eda7ab725a58ede140d647f8617e67fea0b580578b7c965e2
Date: Sat, 6 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659772252
