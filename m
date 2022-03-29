Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205EE7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 10:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648551118;
	h=To:Subject:From:Message-Id:Date;
	bh=HaHl1dFyh7qxEQdld6QDQrn0mQ6NkQGYXVrICShZ4Ro=;
	b=E/LmJ/UqGQGWcyK+44AHAUysDB0poJtbiODi1FW4c+ggb30bH4anmDZ0oCIULJwT
	eflmW2VRiqK19BrJ0R3GoRaJ7nDEY7V1VnXOfHp74WBBuUiYDqixrBw6FK9Dvh8+gsH
	h8VH/2pa1wU93wMQy/SXGm+ttRJ3wztXPpdvBBiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648551118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HaHl1dFyh7qxEQdld6QDQrn0mQ6NkQGYXVrICShZ4Ro=;
	b=M+4SToxSONQAJTTU/8XDENuoHGxF6iYv+ShC3rUY6Z777k1eDP2IO6oMOCyHkqnn
	qbjDVWHO01oWB6HHIkXQYwWioohiUDQ4HcPJyKOKbacdb1UTUgz52qG7frSkRbejNTJ
	Pd0d1xJTY9EHmD5f8l4HD+7idtZSph26rDfjJ680=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd54dc5f3-c33d7295-48cf-4033-88a8-8b3c9e43188f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b30b2d55537ee0b03287e3d7b0326f7c44932cbd784af56d930fa1dc2673ef7c
Date: Tue, 29 Mar 2022 10:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648551118
