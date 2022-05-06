Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE70D7E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 08:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651825798;
	h=To:Subject:From:Message-Id:Date;
	bh=EV7fD9jFS5a3neLk2aQdO5y2jQdbpevn4K40DBB+GQ4=;
	b=Hh56ALb+tg7H28d/VBTx8Kai9Hgp8THyJifkhpUT9cVS/RcCRFz5IZbSIliFO1YQ
	WkL5Q3jlUVhLt1QvH09+lP//y2bZVsTlfCUXkml6uGThbQR5FAGom+d/uK//ui1oCZ8
	9Ln/wjBevgtOPlZtTabEOiKjz3FZS/LM/NZ5+M5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651825798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EV7fD9jFS5a3neLk2aQdO5y2jQdbpevn4K40DBB+GQ4=;
	b=P6jFKaXjOLAjdVZARRHGQWLsWLIi71wbkj0JuJ7rdiyMssCu3a5DDRrIRRxQhuPc
	vs366/fAZw2ehKCnT/+59307Wgu472tyc9QH/Gj0L9FjkFBKO8GrGlxfH/ecfTgJ1XZ
	Zl7ECYSS/qNDUWmYbs1MECK3fkpYMzbAgvLryxd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180987d6c6c-8ee6ef18-12e6-414e-9f55-5e66a31153aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35071a51502517b4afa24faea34bfc14c669e1d694240020b5a2b06b3c12ddb3
Date: Fri, 6 May 2022 08:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651825798
