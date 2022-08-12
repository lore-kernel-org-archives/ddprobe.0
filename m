Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEEC20E4
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660320053;
	h=To:Subject:From:Message-Id:Date;
	bh=idbxPYEzNt0dlOSNT7DXwLILwIEOZEbF4MKecj5dw4c=;
	b=juP1dqpjTTKHtMRJMoPhKKiDQGA48zEi+DypsbgQUkqyVgEkLM78Qw2kQKu7+2cA
	BlxY4UXn+pSnN4YxQTFF/OukYHPNFRmpWfiFFqbO2t0wYWsOMm3IYfhlyccmukuLinB
	HXZ//kSrignjiZZY4Dz1b7QoCHRdjDZbBiS/WqRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660320053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idbxPYEzNt0dlOSNT7DXwLILwIEOZEbF4MKecj5dw4c=;
	b=bk83z7wRXqDLoVJQ0OwfQVrzOC95LvYgGhFeNlwxOmH9uiVIFYqocD/AjTHMskWL
	sSfE2WYI/sM0PajvlE6oylOfXnl4zCRBgpDQgjUdiq9u5cuzHX5LNyBLdwThDw/DFY4
	rA+/QK5OeHkSFO3c2kdbT4oSFZYttDsxAQDUJiNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292c97578-9a122ae7-704c-4607-9672-691e821d7684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05efe4c23e6915d6a3d7881f96eb2b1ed12b6b91eacdf36257a45643f4fae199
Date: Fri, 12 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660320052
