Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC913C26
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658327812;
	h=To:Subject:From:Message-Id:Date;
	bh=okQacxK4PHyX8bmw9GSH4xcLxtKVzdJ5rbdyf0izWMs=;
	b=MF5ZxlihjnEjpIgbTs4dCCbVt3lV4NgtBeV84ni9CYtcp0CI2BDdx53wW+CgTZQl
	EJtTZ4WjKCk0Fi/6C+v3s8EP6nX5F7Oj6AI1Qn67WzB/hJGERNYPflT+E9ZBWVm48Ou
	a4kpKhjoYYHiKEUntJJl9B2dIa9LmVNsMlaF7QCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658327812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okQacxK4PHyX8bmw9GSH4xcLxtKVzdJ5rbdyf0izWMs=;
	b=AVkMBy+NMKtXA6GY+NqYrifiKfzHOl03maJX7br62BJxU48xfWqzhN5mAXKvwIeV
	Rppwi47BIJia3HiNRAVVMvagKZ4u/2ceWFx9V9ooIw+K0577f1WG4p1j2sMpH8Lrywx
	h/G4QclxesG5C6irWw+jch7+v9skjEriXW5u9mtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c0a48e8-d79a1b30-4272-42fa-8846-f42f5d6de56d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f03b2bc5da036c9e8aa9280f1af305be182f7c6fdb93e1f8029182f402f3b1a
Date: Wed, 20 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658327812
