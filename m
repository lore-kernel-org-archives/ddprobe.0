Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8532F29
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661011852;
	h=To:Subject:From:Message-Id:Date;
	bh=a1YM0odQIV1vgC/Rm8ymDZqxNwZhI4QHLxgxbpxfRVc=;
	b=Psuyp3rN8Ht3f4UD/bzuEgYmoox9+gZT2QgiQym0aLZqLpC4hdQl43Y+lyLIONPA
	nlQjpfeMK4FTOyZW9c2hlFpPBvuhyMI9ic5w1q+XRLGhNAsfRQswo7ZrSOAiXCO4yOf
	qCiLX9vyM0keuejhHyOL0N9+jf/XHPoeRkWSilSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661011852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1YM0odQIV1vgC/Rm8ymDZqxNwZhI4QHLxgxbpxfRVc=;
	b=Tnpf6m4gFAEk9M2wQqSIO6amYRk7g5JzNMGFILeWMDadV45dsbwTDUnUaB6R9vX4
	MEkVB4RmEpqvnQ4d3Y2lKRLja87i5k9dEjj3PpNwa8HNHFimDzltsIxtaoFrRWhvcK8
	Ku1cfntiDtxd0Em31Iyc7hFOGcipwg+npSIM0yDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc057d1d-53bd1eca-cbfc-400e-8526-b0e25f1a67e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cdcbe237befe1fb7c90d0b548bddf629f4987e4f3398d62c9458f0a9229d651
Date: Sat, 20 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661011852
