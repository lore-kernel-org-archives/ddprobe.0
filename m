Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0122362A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658024212;
	h=To:Subject:From:Message-Id:Date;
	bh=wQm0PdYiQC3Bt/JenKolKnADnyMjxOQDCI5qWUflqAg=;
	b=iBXRAtmtdtF5WUAUJ+v9K0welFyMNvBjYz9t6cTkVC8KoOEIBoes1QR+F4Cd72AD
	C3DJHkpSR2OE8te8oBBiMp4Q8+5REymq5/2OSCLBEYbq+/KcgFYe+/720TAZCV55Rz0
	PL5drA3LLT1j4ZBtOYYAxp5XzLYLKKUXhEu6bxWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658024212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wQm0PdYiQC3Bt/JenKolKnADnyMjxOQDCI5qWUflqAg=;
	b=IYdIllMDaVoti3ZjszcHv1/WoW1ZAu+t19boCm/Z6ZjBpCRK2lVDS1rutemqmpAs
	nnF6asJwGDkOKX5jundIisfUYGyBdQBN2ybAfISYRAIccAjKR4j3SpLG8K4ehzhZiRe
	7DcTLH6LqKApPpN8rVPLTuJnF5J80IpUAtxEp90E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209f1b76a-a77f289c-5f40-4366-bbe7-5af99ab50ce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b43d03f9b002c23438b3af57b050d3637587a75d4acfa528040e51566344b83
Date: Sun, 17 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658024212
