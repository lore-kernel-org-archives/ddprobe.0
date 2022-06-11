Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DE27F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654941779;
	h=To:Subject:From:Message-Id:Date;
	bh=L21OX1s2yDhna4BQ/CgFXdfrvcy0MDvKv6VPOPaiZrU=;
	b=hWAmfB7dE0hM08IUmcUs8EjFmpP6dhMTpAnHFEi24zaXMj3+RHkchGcKKE78WnpD
	6X2aeWbqGBhh0l7sXmv2PX2WZvQOHSTXF5EQHdpK9x4fA6lbjAL2MnpfJv1d23YRZ6Z
	aoctqaoLWL2RaAz0f3+8wQ7o34gY7Nj4eYVXHC7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654941779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L21OX1s2yDhna4BQ/CgFXdfrvcy0MDvKv6VPOPaiZrU=;
	b=jDEJrmxS/UATfoPOIHkHs8oxPF0R3S5uh9tJ2y8i6j+Zx3M8tRl0ntHv0HZNqnqW
	sfE8EYzbYLy86XCHvGM6MsTCKe4BQONFbKynJxRWhngDIa4TUh1xrCfL4ut9+kujPtd
	RDFkLOJHTh8gXL0Fs56y+fXMx1WshKE54mnR7CM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152378568-16f38085-a333-49dc-bf27-021597cd4d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3126039c1f61ab6bc199d4fe3fd540c49dabddc4330c2253be6639d8b764576
Date: Sat, 11 Jun 2022 10:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654941779
