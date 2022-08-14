Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6B6EDA
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660482653;
	h=To:Subject:From:Message-Id:Date;
	bh=oUMo7x67Kz3qruI2fnESudq3yYHyXflc0O/2kaZ83ns=;
	b=XuC+SP0Yotu8f4wdIzXhSOqALsws6zJ2drzTtMdhfrOXBjwYIG5FL8r9VQWl6ykI
	Jw05F/1xSI6PXGIBIWpA31rXw0IyjZW/B4wI+kuQghrRXY3pY3wDEgqpBJjG7M0xQOp
	jqxQQEj2CbUZrLM19v5UXXOENn92XijhReqdUEkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660482653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oUMo7x67Kz3qruI2fnESudq3yYHyXflc0O/2kaZ83ns=;
	b=g9wrCAEPWAGqIBCD8wIDxziI/Wp/Tg9Cd0HiMyaz/An6HxlzaDEIK5M+Zi/BWuxz
	ECW0JIA4DY9eF52XzLiNIPquIrnZfEQ2UsvCofLc32Syr2044rWw3bBW/0zA66Q/vcB
	hkXyoJNC9OC2/EO0XIUmPvn6qV2nsHqk9FlgGxf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c7a89c9-47aa5eed-2df9-48f7-9cc3-e27b35aa28af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0379ac14d8323c042691ea5ea10144ed6a07080c97eb33e4004881243dcf8cf7
Date: Sun, 14 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660482652
