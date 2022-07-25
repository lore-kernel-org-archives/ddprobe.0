Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BFA20F3
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658766412;
	h=To:Subject:From:Message-Id:Date;
	bh=L3G07VtP8yTXjWs2UsX3IX0vBCJ5mp9h/iwXbgox9vU=;
	b=aJs+84829WflBpvqAQKcjonRfn6lAiZ4sKIK4hHrhZ8zeRv6NotJwj771V51kqTY
	iRffGxbps8KehGojQihOdguOcZuS434RFXHsDJa8eE8X07YiCKMEkyMPs0BKTl2S53J
	PFSUeBz3HBqpWORIzZnpJjrZbBEn7xtCcKFCqqnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658766412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L3G07VtP8yTXjWs2UsX3IX0vBCJ5mp9h/iwXbgox9vU=;
	b=SF3vPpbEA/eCbltZ59QpE7/vLiNO+GWvuD0g20cV8S3Lo99KadN1eB+izfBdO/Kc
	ZLUF41NKzNuh/yAUFZ3D3Oh/Cn/+lMiR/LIE5DUI3FzLGGp6G0ipMLbJMMWRUVvdIbV
	pSMEFsUmpIpan9y2YV62i9D0sFLLEls1sLZ2GObE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182362eca15-ce646160-3807-4b94-ae65-617c7addcd8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96efa5f8d1c29e5983ef884cf7d808b1489aa103b7621bc33cc8eb4677e9ba3f
Date: Mon, 25 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658766412
