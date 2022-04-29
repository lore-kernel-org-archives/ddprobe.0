Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F87B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 13:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651237498;
	h=To:Subject:From:Message-Id:Date;
	bh=0ttL1WOAIROscYmoAHGOSLzdI/vJuDQ24SYqvBVjy60=;
	b=EFXLDkwfqzIG3kUDO+tRzSl9SWeKKiY/X4WuxXzbZ/CeuLPwd5c06s248lz+2BZV
	ZqeO/kHmpoKyM5uFSjXhnwvgiPEXWOxcE/Zu7/QGlDj4Hq9zZSSZrgVfHW4i6kiszKo
	b8VwIC1CN97wUhggyamO7QwgD672UGIosfXUCIw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651237498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ttL1WOAIROscYmoAHGOSLzdI/vJuDQ24SYqvBVjy60=;
	b=LDjSWVQdRt5QnIB9zUgE1svbt26MbcUuRCkN7rOhrh1aBNi5P3rQeDMUlSauOjVR
	uRzbnEvlkRfx0XKdDfYogUWCmynolYbAqSnf6rnsTx45q/wU0hhxjE6RyJVJSiqrbTA
	pGxmpILnTfqJtZQ0i4LLaBH7+8pMm2aXqRRS0NeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180756cad87-6e892319-4a28-457f-90d8-931baeaf4925-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d084aef558b91b7cb9f41465dea9529e308a02b84850f6e80412887e40d52209
Date: Fri, 29 Apr 2022 13:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651237498
