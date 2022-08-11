Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5925820E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660187452;
	h=To:Subject:From:Message-Id:Date;
	bh=lRFI4XlP6aaDnLAl0/VuxGKJWyk/7Udeh/NTxPWdnTg=;
	b=anjP3I+jcOh1u6dkjzNQEPmFRdQIQBhtl5oFggY6T7xpFfVpqYaaqOd7l1wYnQbp
	FFf9fekJWtPfx8VKE/Vu5HFfTQTnQzv2PpjFDrfjYKufa1Umjuvksdl7dHLQE0gjpEG
	gsKpJv777m1NLIUlTt7hxMrht9v7i3yv0L+c0Zdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660187452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRFI4XlP6aaDnLAl0/VuxGKJWyk/7Udeh/NTxPWdnTg=;
	b=h2WtrXLJAk5JI4ZBDSAmaLyvsQXkq2gQscx3lX4atgBg9PIPgifTAkzmwH4HCQw4
	oBfjoVTR38Fy6rUSv2u8uVul+mhV/qjCjhXgYsTRtyjW04D7rQnTOntxsuJWALmDr7d
	pz3yIDvM6qvWUvQHSFwwvQR6f8qcoi2isBsWKCqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ae224ac-4f6a3cfc-6bde-473a-88d6-a38f7e601429-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d1bb2f073205df8373a335073c923571da70e81f0919bb5712139747b6c1d48
Date: Thu, 11 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660187452
