Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587EE7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 09:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648459918;
	h=To:Subject:From:Message-Id:Date;
	bh=x+s8J4ibvK70EItxmaFyjgYUxEoS+jB40ahI3pyliuY=;
	b=PGZM9zFJzuadWo0DxWV7JrzBQGg9QVZuk2zACRrISQjccdGMkZsJpioqVtofcMXW
	Qr7/7l/L1RsYpAPE8Yz6vG4X+29hid2HVG2r5/SNy/rme1kFoMQ1jzDXUQAxFckhjW0
	kSrEy/MljxoCdoO2QQh5fUib0rhzXnT/DwrJepqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648459918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+s8J4ibvK70EItxmaFyjgYUxEoS+jB40ahI3pyliuY=;
	b=bbzYI24X4k0bX/+6TLhH2TQWL6xGAhz0f9th1nQxUBauUzel4U5WCH6Y0GslpB/q
	2DwMgycRzt3HCwh7Akw8EUkv4okF9n+PGW3SY4D7eANCvAo0dbiFSYJe79tJo+PbshA
	PdUvQmrGFYe8kcjNKuzlGVkrsQWg0+9PbMSjg4L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcfde2b96-675a934e-d720-40de-9b40-b0ef354e79a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63dd80d9c2f5798250d138ff38041fff3d62f90a36893afa12d5a50f24b94134
Date: Mon, 28 Mar 2022 09:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648459918
