Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9592563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657286812;
	h=To:Subject:From:Message-Id:Date;
	bh=2ld2L61AeDRcOC3aI/Ki1lI1SVfrv2NprZACxToOGP8=;
	b=DMW7KGLTMnz7ICReYRNvCvHs2TQa2FfRH9ZHWOYlhd+GfP2ZaCmEGZRXUb6lTm7B
	dNQIRPADbD/uqQ7nMExmDtkvj5L5XAktbErcCIqueAYBmYE9hV6oxfvKymz60sFUXrG
	HsvPNHV9YtM6y38LZE24JLCU8KJ1Vjq1ZRd8acTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657286812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ld2L61AeDRcOC3aI/Ki1lI1SVfrv2NprZACxToOGP8=;
	b=cvO/n8YCkBldEiZ09tX9nK3YBSOmNcRtYrh6Hvr4A6LVo/ZHl1uwXpQlyambZ5Jq
	Mf++xfON9kN7QaEY6MSOhesdbT1OR0nxjNG8Bt3IPSs9ut75+OmrxcQBTu55ZyZG+99
	lQODy7n+d7UbEfZRX+hUMs4aGQ/H3Z4noJyyeAOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddfde27c-b4d4af92-6481-4254-91c6-4360dc6a2f02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbf29d7d4ed9101d1d40be2fd923c71ba75de7d10230112ca39bfc46668e1c9f
Date: Fri, 8 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657286812
