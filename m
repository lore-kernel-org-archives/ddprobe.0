Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BDC7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 02:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653876359;
	h=To:Subject:From:Message-Id:Date;
	bh=BcMs8ihCmbp+lYwnoA7fOfHH8K3ZCXMsl6DoHT7eyIw=;
	b=R9FMPwfGpVy+nZkWf2fFYeuazky/YkAAT4Vx7bjLtVqWxooA5YeuOfXDm6daqybs
	qyiSSRzXQxCfiok0wfdVlhUKqFkjnbLBoFM3d7PINjiQMLgLbKrOBZ6lUVtsiO+4/p2
	pHGw0Xm4raDMv1SLt00tccLsb6yr9omKEqmcEBJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653876359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BcMs8ihCmbp+lYwnoA7fOfHH8K3ZCXMsl6DoHT7eyIw=;
	b=VHLKGI4ilzVvPLlJgSu0qUaAIEqfcIESWY2U24YFU7ZLDdFpHrAhHNUhR8iH5hqW
	WcjhWWPZd+Eq5t/mV23Y9gZcCLfT0qCX4VcTUQBkDsrTzV7qlMkt8teNxNB0nmFtO78
	5nn2sIeTsPlTAkIGCZIpZORqNLbyZyBQFFVJnjp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112b68075-278d6987-2b71-4ddc-8ca9-01522fc77a30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 928c893b0bacd19d2e74c658804b2c284425a798a1ce830052bcd5b54ebd9dd8
Date: Mon, 30 May 2022 02:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653876359
