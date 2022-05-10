Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ABD1FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 01:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652145179;
	h=To:Subject:From:Message-Id:Date;
	bh=gx9S8kTiiFDs6c1QZ8LcBuS+SgpYFlukaHuXprO5r1k=;
	b=eTocmklEgqA7n/2B+yAcmAAbUCTjq0u4pK4WP0pTOMmD6gLa/dLTXPu5Jt00+2EN
	hwdaBLNgbtNMdK40nqeoZralk2Ozfhg0cQ3OE4yRsoXUmcbmpWCBQXpJDB+B895HFCT
	dWiPA72bzKqfOiuG9S63LPMqErWjMEBggKXfcCHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652145179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gx9S8kTiiFDs6c1QZ8LcBuS+SgpYFlukaHuXprO5r1k=;
	b=F6GKj1Yxu0QI0weeNsAEYVIDPtcYF//Gc1i7Wr0BN5jeK39BqWnvaPYoYLFvkZ5/
	cEjNQfTEHru6dpMqf49a1kcXGXs9sT3gRwntJcmAxjOenNDXFCedB5vmndkjihb84m8
	L2Mrqntez4KCvduIFFEpw6XUs003CnX8rGDgJvks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab86ca82-ef830754-db06-486f-821b-20bc20c392d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ec0a173a348f59125298cd41a5264485c1225b68d021d160e969aee6ec5da1d
Date: Tue, 10 May 2022 01:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652145179
