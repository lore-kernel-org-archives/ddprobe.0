Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AAD7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 06:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650003598;
	h=To:Subject:From:Message-Id:Date;
	bh=MfiE9Y5fFao0ujpMwxb92pmSHkUhIPmls/2FzMgBDY0=;
	b=WN7SeSD1dsZ0HaCrWxvG++vp83FcI/FxH8tV7fV9rkwQKPGD7zuUx0XVweH/qxud
	HWtI9Hb3zIBd4/NIicxZrv9B8UmmWItEsb3IFlD4XduxqGvqjiQ5ERHnU1hHcqDuFg2
	WBcuk0ohrjnhpNKWKwPM2wWVLbfti1c8Brs4WMzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650003598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MfiE9Y5fFao0ujpMwxb92pmSHkUhIPmls/2FzMgBDY0=;
	b=E39jRCE5cs73uISjhqlyDtgUz1/dyA3zIMWNw6pFZRiquwChU3XejuEyquXd8gBy
	fxlX8T3V3cCEj3ErqjL3JoLZB+dg8DiAGUFjNBgtoKkeNFZ8R1N3a0sd9nFWvoooZ26
	P0bXM5ybSzG2iiFfc+KirmiJlgNZoO/UlIeTTCWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802be0dbcb-b522c4a6-017e-49f4-b365-98a9815695e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e95728772e04416922e21c26cfa7ec7cb211ad17fb1a73c68bc1f836b5c12572
Date: Fri, 15 Apr 2022 06:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650003598
