Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0884B29A7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655335859;
	h=To:Subject:From:Message-Id:Date;
	bh=uIOduaLfE5TIIEtIavm8oHBfGm0eFypoduFpaePIris=;
	b=TtzlcmxT1FJ6v4Qj05YkHZWEJrXFO9AD80JqXCEzRGMuRpJq2QN+ag0hUZcmTT/B
	znp37JD60AKbAjRLHbdGhNbH8He8Yl/skQkC02NPjUtRWKZkCg12MKWoRJ6pUG8PTDh
	1+LD3O0EyCKnGpF5hm9QLj2Jl8AtIGkUv3sE4rsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655335859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uIOduaLfE5TIIEtIavm8oHBfGm0eFypoduFpaePIris=;
	b=JmBkv++CCoN2LdnH/2iHq4WqCBSWJARjdzKaEBIuBontYYT52hUgrEZTxIyNGZV2
	HFninQl6rfzpaV977M3rrlzGDv2eWMb7w4JKW3lAe9YRxkHVTFg9oyu0tvJnXi8X3SQ
	Da+OIBBsCtrWEeexJCnFuifCuiK5oIXmziRA+A1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169b4b42a-72ebeb5c-9ed1-4808-8d4b-3583b4fc774b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f8831b337af076ef581c67f775200a71c259563491cd059807bd1512accac26
Date: Wed, 15 Jun 2022 23:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655335859
