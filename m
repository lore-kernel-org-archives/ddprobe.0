Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE427B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658342212;
	h=To:Subject:From:Message-Id:Date;
	bh=S7F8ldSaKgBvTXWpaGfkF7x5ADwxhCV5LZxxjqcL6Ck=;
	b=LgNrKMGWUNn9rLMi45l9sDGSmuxUpox81q6rA5aek8nhC/MHqFP8NHeUnvFzUqm8
	DycHW7o08n5bXLlzVH4w+Nojt3VBg5Ok7o0LBzbLH0UDniujbR0CqpIPnSRx72DbQmQ
	ebjzZ4PbTn0EzL5A7OXC8qrEHtNA3YhXWhGww3B0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658342212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7F8ldSaKgBvTXWpaGfkF7x5ADwxhCV5LZxxjqcL6Ck=;
	b=M1pRgir0p++4y1iVjuqY+rMYP92d4jbEIGW+MRvgZoX4aHG7g/+f1Et4SdiRuR2W
	5shdTirMdH6iR2O8VdcEaRrvNDOMiMxnScZHbLuaUyrOkBDSMUnWjnLCZFzRVEuZidk
	qUFRgkQLbr9nvq4q1zxSjWDemfD6Puc4NwIMETqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ce602d5-73e2e6af-5aa9-48fd-89d9-876eabf6cc98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6417ba3505f655d5e8c51075e0697df238a5da73a6912c1954b554e24f3182a4
Date: Wed, 20 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658342212
