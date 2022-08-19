Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3EA4A05
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660934453;
	h=To:Subject:From:Message-Id:Date;
	bh=mCzxmYkuJA2n5VKEdsyezm2wJ/OjEvJ9d4T2haNCnxE=;
	b=k2AZ5fRGP8ZS4ht5l03IIHU8GIxInWr0FXPvDKc9R6D1cudpG+XSPzp17z2zYP+P
	9mMAPv9HlLtpPKDPLc1nIZ+1ri+mOUvJeF3d8brs5Htb2j4b6Ua18pGezX6RhST3Pbw
	S4SeoNQrJEbW0LZlS4ulxl2I869wULPzDCdXripM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660934453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCzxmYkuJA2n5VKEdsyezm2wJ/OjEvJ9d4T2haNCnxE=;
	b=Gzet4UAcRikw/cTZk+OH8iKfGe8J1wIJX4XgyHrPIKusmURdBeZk5dxdgBetaVKT
	VPQqrFjKLqMD3TAkLOA/kUdkv1ovXk8vEitOHwIsb04MB3cOvahHZzZwjZGy52ZF5jQ
	9G3N3dbvoVSD+RVgquWCiHr3ILn0aGqzd8erZYNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b768753f-cb1db352-dfb1-4398-94fd-b64d81913c18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f39a611d4182a8fc94319d22dd4819a318430ab3578f7f12a3ab88c119eba49c
Date: Fri, 19 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660934452
