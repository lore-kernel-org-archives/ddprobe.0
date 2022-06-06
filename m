Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EEC23BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654526039;
	h=To:Subject:From:Message-Id:Date;
	bh=eJD/fYYVnv9JJfu/iEV9DmkbyntskPEDr1mvOmbZCf0=;
	b=TFUjdNSufX+z1yFh/oNW/s8RmPUwCJgbEAxbYF9vnU+WwDS12QKzmqVP0oVTPrkD
	LP2aQJJLkGU2IO8CEeZKeQ8ovMhAmMN3fD8CcTkb9rAGmwjc587kBNx3W3g4KTz0ZS0
	HyxycxUhyvkR62KnwPLrI9S9zSrcC3hi/SeCyo+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654526039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eJD/fYYVnv9JJfu/iEV9DmkbyntskPEDr1mvOmbZCf0=;
	b=WMgjb/TN3fIRRebifULru1pisGnyd+6Hf7eNZxtPeg2c/u7WxMY+EFepe49epKKx
	hxiunIDyAA4od6QmCwCb2TtWVu/AvkjDan/FQa0liBaxa+GaQnj+gnQRAfo8EbkepUW
	iMgYgBlQ/Yej0Vsr/y0Soqq16wTQBED+RQKEC0oI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181396fd504-7a7e8c3b-ede6-4b8c-882e-89a44b874b13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00131e71ab10c2186a4f52394b809da5048b9705e2fd7e68a5413086f05851cd
Date: Mon, 6 Jun 2022 14:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654526039
