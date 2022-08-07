Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC831852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659876652;
	h=To:Subject:From:Message-Id:Date;
	bh=VHt35TgXcQgio0m8uaDlmgORqHuAtmg/1+Uu3ZoY6Jk=;
	b=ScCg1haRGVZD1gu/tzgLRr2P7AFl8aj9ULJsN0ljTrmseN3xU0wsTLiEIBi26AZ9
	/MNpKXXbEfn0sf16PN33Tdl9YcSrPlhWimVAVf0KUF9JzYy24DEbtuAoayP/QZcPtU2
	CbI51T4iOPhaY5AN9G4GbLzegp5FbllzPUdH4rxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659876652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VHt35TgXcQgio0m8uaDlmgORqHuAtmg/1+Uu3ZoY6Jk=;
	b=J8kQHH8n3jQTZ3+31Z/tf4tS9M0UTkMPXsuCa1j83aHDmFkum6YrJGxOx9vrt+65
	Q4RapTsC9xUBxga+3d6nYiNzRxNwfTJiPr8hl5RLDE8si2CjuP+97dXiEGXFBFXfVGw
	BXoNanhOTIblRCBCv343RO++uf42mTrV2fHl5PB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182785bb607-5754e5a0-8520-4aaf-94bb-9244acabe874-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4f0117d4a86b85d633cc8b3ae3b0d7d42de86f5379965c58cd877f1886cf848
Date: Sun, 7 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659876652
