Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C765469D
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658182612;
	h=To:Subject:From:Message-Id:Date;
	bh=Q29G28AeSrJ3D+kiX58/6wWCgfekhXqt9D1d4Hda98o=;
	b=bwsDLwHpjqQ9jiZwE4vKbX0LYd7Xc5YDf6JrfgLK7OyJ6ljc3m7x232M8YbLA7MH
	XevtKwcGeDEkneaIjGmVIkihjbMmYOt9xuk+UpXX3LrhWmiI8FWx3EQN+C33kVhA+Od
	8P2uPlvpFRDvICyijzhkP88CKEXQLK9kZ/msQulc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658182612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q29G28AeSrJ3D+kiX58/6wWCgfekhXqt9D1d4Hda98o=;
	b=fqxQtbLfjQJYDrt/hp112qquVvEcs9Jv5HWtKDt7/RB47rvilh982t3yQ666VucU
	7+08cG707MdWu3vUeTxvtNfeYaMSMYCobKic8ykVP3vVEQ+Dr54/O+iYh8c+Hk49ZxQ
	GuhQuNEMpBbxpau/W1hUwYm4D0UYjVmvKMZhU5fU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821362b524-9a43559a-b568-4c0d-a77c-de7a4be249b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea7f265ac4c030d140f09d20e8d631a8f23453ac2f4306a13f61eea50f441b2
Date: Mon, 18 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658182612
