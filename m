Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AE410F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647308485;
	h=To:Subject:From:Message-Id:Date;
	bh=O1MUNGOEC//s3oVykxtKp1hpHYgs6zpjeES5WXC23U4=;
	b=UBLvdmOJeMGtF7FbiLl+hRp5UPsOmHNjnYY2Mhr1nBXQco8sS89T6c13kSPhsiNH
	6qUckY+8+TiLBwyMchxn86+FXnXrUnPhwD71lAQWFzn3suA51PMgiLt8knheY/iNNWE
	BrBjkcNRNaSWHFfszwmHeCTooaCOfZPffpo9cTZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647308485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O1MUNGOEC//s3oVykxtKp1hpHYgs6zpjeES5WXC23U4=;
	b=STrat0dB3pr8yPk50KRejeLHxftN9nm60KlKv9fsxscVcM+1WzGEtD1wIwL1kREM
	Afy8FVoJmn1QLKmab2gtN1Tbhf7LiFPS0PQEKWJ/eRYOKJAfLQ96BaAaGIMcLO0Ffwz
	4DAPsZmEoNzBpkbDrkK5kR7Ie6OSbvXokRsTrdf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b3cb095-cdac01dc-cea6-4557-8643-a789ecb851ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 396a4e485ee5b63bb4f2a515cc089f0589f9dcf9c7d22c3f0569fe658f7f440a
Date: Tue, 15 Mar 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647308484
