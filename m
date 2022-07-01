Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FC76D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656697612;
	h=To:Subject:From:Message-Id:Date;
	bh=QkxjJhLDKxqOqZuGP0ME8ugUv17D7oylLBAQA4UakJw=;
	b=iKIy4lLTNfMvDNH064NHv1YDkPHF8OTPRODn/dwbtYuOiGz1gOdIAFhZpDznENfQ
	fRrryutzI2gvgWRT43tuccNjNZL15M5QWtzbCgRPYedce5acOVeyrKQYmJzkI2rT0Pb
	mmwojPp7vK8wbD+HxRHUxWzs5P5w7DffBKgpKgEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656697612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QkxjJhLDKxqOqZuGP0ME8ugUv17D7oylLBAQA4UakJw=;
	b=Yv0rtaHB9jaCnvXpHVTTulD02mtYPfdZRFEn6hWqlJ7pml5qm2lAFVdkr4vu2eCo
	AFugbLMTHK9KKXRt3nWvvuhTuwaF99ieiePzPh5llsyWMSFS5eaTz597pZUKgVV2jRe
	hbdWeiI9ru286VphWaVU9LlNDzh54wEvJ6Gg8Ms0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181badf6800-a8d5672a-2536-4c55-ac12-14ce93fe4e0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbbb90485a2f550e5740dfe4fd58aa3bc5cb103a3155e5fae108e7d8beb2b4a0
Date: Fri, 1 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656697612
