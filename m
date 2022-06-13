Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D510F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655097479;
	h=To:Subject:From:Message-Id:Date;
	bh=Brj4mGP0T2JwH3iodDTbgyHLQu1Sf6a4Fg/x4G8nPNA=;
	b=K6fcL1Ug9KVpn2qFdT7zyCJ2NoI/FlSKim8+fTM0W3QnmYB688H2M53O2U8oyrdp
	dfXxBqrHVbJQ26X6K9iOhvC6QN96EaZn/i+E9oJBK9abRbhHym4COzGpMfwlbw8Vfqa
	YlaAFQVcXX4XHCxIZ7eELq1vEkdxhnU92jzuT8Ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655097479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Brj4mGP0T2JwH3iodDTbgyHLQu1Sf6a4Fg/x4G8nPNA=;
	b=PrWnPBaDDXYpmzqpIHK58ih6CvYCCeanhLS26YqIkSpe05fn9dBSESzJgbsWhVPF
	Bxrg5T3iqIbLlmmMah1XpQYRH52ljZvpoQPF9fk6XSoz4T2V6vvZBt5ukIT6L24FC3j
	KbTwAZG/Bgjo/B6ya8Xl6W0GPc8iFn/qTbPuyAcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b7f5099-026ad01a-c32e-4d34-b0a6-3b57080a41dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f18c5ad1c09a3990d2d780c0a234e4b2e3cac300b86d2055f875964d82756d4
Date: Mon, 13 Jun 2022 05:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655097478
