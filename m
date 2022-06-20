Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF57E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655710680;
	h=To:Subject:From:Message-Id:Date;
	bh=vPj9zX93qIypn6a/Xfzjyv8iOU2Wug4nd5P0WurUYtk=;
	b=F6cmFQP9VcjUdZEzdXviONMi1kUY0gtO9i7ISgtIWzjCR9pB5tujNxZzEmFsNL2c
	2YsY6ONo1hy+izi5eO3gCnbkXgxtKTLj5N5KmoiEr1PnqUiTNbjhdzmYDXNAoXFWw87
	MLIC3+j36/trU9YbIabyU01RAnn97+axXT69vaL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655710680;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vPj9zX93qIypn6a/Xfzjyv8iOU2Wug4nd5P0WurUYtk=;
	b=d1MlcmzaS/OMgRP7lPQPyyoQ9c4ua5pYXPMjMACGACg5JeZTLUWm4rtJqEP/4QWx
	Pz0vTh5pmmGkTEEsToU6MbmPkFVoiyDm+AVtFjlYmwYTNpP0WoVeuCf01wHVZyrqIoK
	LbJSuopt/x60AA5IIGKzDyQnkErWrhbG7VM7uSIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181800c00ba-d780a926-9f7b-4145-9259-d1ae65ed6bb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4963316cd3e5d16d645909e62b557fef84c133bb68449ae601d7f29832595339
Date: Mon, 20 Jun 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655710679
