Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CCD3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655482259;
	h=To:Subject:From:Message-Id:Date;
	bh=ejJvTjatt11+V2GTFq13rNavqnRK+9g7uuzy+FZERb0=;
	b=dVoDv9MICHEx+ImaFuTnIYJwm3c0fQ5zIab5el6zu4JJoE0dfguv+eD8oqsQRufr
	UEfMZZ7XXIT8sZ9E/74tmjC5dm8YRw2PxtGF0BOLdZA3tU5E/S78GrWxhg0D/Inunnd
	RNy21pWlZ9HR8JU3wTqeliFzGiqwS1jjdjGlnYno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655482259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ejJvTjatt11+V2GTFq13rNavqnRK+9g7uuzy+FZERb0=;
	b=WL14hmk7O6JNG5t1GxzDp2i6SExtdzBMlYO2NU+cQpDVOa5w3BoaoX3QhTLtgIbx
	HugEZh7if+a2gVwliSg3U7UYy50ba8CUcM6D6GA/SsA5RkjyzTcMqLOCA/JL41MKlEI
	23YKOnRpvEaSGUANf5AupGSS+PQ3GKZwegcpzi9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181726e971d-21b0a4c0-17fa-4541-a66e-ab60ca4f11e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 134efb2b63bbf2be6c1171d1c86b0218ae8c8fa9adb0e5045849a9ac801f8af7
Date: Fri, 17 Jun 2022 16:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655482259
