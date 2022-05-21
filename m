Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420A533CE
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 20:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653166439;
	h=To:Subject:From:Message-Id:Date;
	bh=37C8W37wGM+Efi/Mme+Brcvp6N3f9nwqMLg1a+c4xco=;
	b=PSVjIqw087IgoxQHmwj4Jqb3H+TKikDbGqslzaZTsFHDfX6G4loJBejusKc/i+/z
	Bj5NhwbkE6oVe9YBpveWlax5I3c/0Q/WjWSef3lppQmL6AeWa1yTYgY7o+EJ1EuvWCZ
	iHh4qrTt098TbqxuHN6DqdL4Ag5BvNxuMOYMzE+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653166439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=37C8W37wGM+Efi/Mme+Brcvp6N3f9nwqMLg1a+c4xco=;
	b=RUsbTPXJNFwRF4OLxF61gSs9Cp7eNv3Kweg03VMKxaQyOH/eRNCNWJ+y6Oo6b2nu
	tqDa7SHZQPFPGqBNbUAg9/b7wfB6Q0AhciulmfSKdipK0SU2YtdB9mYYY0lRORX1EFv
	9l2Knm4sgRW1GCWoA9+65waBPQZCw93zE3R5UWu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e865fb5a-43f6fa84-6eb4-445d-85a4-520f32d1a0d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bd1a06c6175672d314a125405af0e4ead1096b76676ebd0270039339cad41a8
Date: Sat, 21 May 2022 20:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653166439
