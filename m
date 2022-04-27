Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8137B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 09:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651051438;
	h=To:Subject:From:Message-Id:Date;
	bh=97WvD4QO8XeYG+MoLacpohAEosgB7QZJCvVcjULTm1c=;
	b=dYfB1A0vBfZ0FBpHqLDtwUKuYzNFg1J62Yqu3g2NOKpoEZ/SH6jL0+6pbtDvASUw
	1jz/+pyVqYd2aq4XNj2B2TwYqryKA1EskIDh0pdemjGLpRVYDKmHbCGOyWHBKw5Eh+H
	DhL/d1BBguFOAZarl0QRZkbFDaUFoPZlEnQZOVWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651051438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=97WvD4QO8XeYG+MoLacpohAEosgB7QZJCvVcjULTm1c=;
	b=GaDQGyKE2HADhjVlPPITofgyY8bfMricnr4SmLqJOs5t4i8ArYxou9W8FSe70ses
	w2N7NjlklDvYc3Zzk0AfZE2CeToSts1j2U453uB4q325d8eLfr6NN9wZItwVdjMz5zo
	yHFuBWt3tDIan/QudKtBPLKunmplaQUiBmYdS8+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a55a0ac-8cbecdd0-5b64-471a-9cbe-f045a96c82ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64cc29f3977c63d7ea24e79541aeb853586286044df47dab92b07e6eb69673f4
Date: Wed, 27 Apr 2022 09:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651051438
