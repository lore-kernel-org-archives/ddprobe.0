Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A87E4C9D
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660591852;
	h=To:Subject:From:Message-Id:Date;
	bh=rsk9q5+PwPreFaLkVvQtgdFRI4JwXRvVk/2EubBR9ig=;
	b=Luxc6HVYUkw3u9AbPD11Tav/QlsWwa6FZd6Cd8NyujL3VWnY5GtXPwMmBwv1vRwa
	tRCSx8Ni0sU2laKofKytP6JcH0ikDaLAUyhNDdJ1H1YeTG6p3mJN9h7Jou/tuW2Nb7H
	qJ1j6B46BAF8c6AHQpv962DjTLc+TfJ2S2zpjXzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660591852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rsk9q5+PwPreFaLkVvQtgdFRI4JwXRvVk/2EubBR9ig=;
	b=TtmNcPcRXpDsq1JerSkeP5z7Hz1YPmVgo2w3fC41Udi6lvRcszr1uIHJRBYMFN/1
	dB3kaKRK2EsS0Aioy7PuWQWWpkcRVZBcVOu8oM7koI27fGYrlTXMtSqSKqX30gh9KsF
	Js2HMEJBUJX7ZFA8GUZnNQbpxjKD0dgDy2BNbji4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2fccc0b-4e018703-31f5-4afe-9839-8d0100ed7f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b68d167c9b2d5e68736c6617ae3b4cbfb346c6b9338c400892f65e445ab8e48
Date: Mon, 15 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660591852
