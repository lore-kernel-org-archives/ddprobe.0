Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A045C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647957384;
	h=To:Subject:From:Message-Id:Date;
	bh=8zrlTxtCRbuGnDr4bndraJfQ2bSSGjplmcGtmE0w69w=;
	b=TBACWYLrUSmWw220XJAMkANg0fXS7OycyGDKCbfve3Beo2AyJ6WiA9gkXWSiBSa5
	J6nNF/J/g9D1q6LJAozbsQqOnwO10/BAWnYWzjRuTaeA15AsHLKKMlvhPIJHnvo5PAo
	rLNHox2TXTaBCvywnlLpzcWMvPe10P80oVPAO8kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647957384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8zrlTxtCRbuGnDr4bndraJfQ2bSSGjplmcGtmE0w69w=;
	b=V0HTrMnNS8+5J4hCOJuu6XiSHmFj+IF4Zd1UBqxM0n7Q6qgehnWHD1gS0rxabj8z
	MKUf4JR+HoEgoQ3up2QtIwSVcfEydaCvG5syyjuO6QzYRAgGxVdl7w3NwBTDTECua19
	/7pUxp/ForTrqVMrTQn924F9LrZ6HAXN/oBWPGqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1ea1e1d-1ac50ea5-3059-4836-9c82-b3db028327d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4c9109baa7015d731d67adcb45bf3fac3efef9ebfa1f9a50f6e5b4ab7fb9801
Date: Tue, 22 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647957384
