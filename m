Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409777B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657395412;
	h=To:Subject:From:Message-Id:Date;
	bh=sA1sppmRDYOVhRIhwQ9pxMag0x7UkLhmTjx3QO4BcE0=;
	b=cp0OWypdAaWjr2UDaTGez+nm5ut+10r4QwUCq2SpqVGue6Z0ntWs8r6EOicoT1ER
	SAVrVB1OxIYcOubDmsBmV8UVWEJuIm0rWn5+YkCTV8NdrwCRuPTQe7de5jtusbNPe0u
	pllgB5V9lqAmKetvku4iCAF1rNZwI0w1S+s2HYbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657395412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sA1sppmRDYOVhRIhwQ9pxMag0x7UkLhmTjx3QO4BcE0=;
	b=QCnIK0AeVTjyOC2Lsc9ELtYmzYrnsGLeAJz37C1qg4sntxnXXCOlzP11jX+cXxQi
	Cl7Yw74+7dhA5Ay3c4vRJBVtl937pJzKtKqLjW+1jv6OVeWbnlZmAD0/IcxEn7MIlXs
	SIOD/9hiAfL/u6ct0/wX53Ci+/bUWTZfq8ukxyHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e476fda6-498f5ecf-f8c6-4dc4-96af-076d463cd4cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ddad4b43c0f8ae734783bee99d22d0a6fa92011b0945d8f7e5cadc95a825d71
Date: Sat, 9 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657395412
