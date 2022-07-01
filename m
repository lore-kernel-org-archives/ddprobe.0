Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DAF6D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656699412;
	h=To:Subject:From:Message-Id:Date;
	bh=2U1+JuWeGNJliEzXdpr9oINFyW5TXoCvXQN6EmwQc/Q=;
	b=jwZsNE5PlrdP9IUie7XGzoQNOfA8HPQP8QRhXrMIUbqQRJp5LXNGNdeLry9QFpjj
	Jprkjb2v5twuamf+MeBmmmyx/HLqoWTN2RdjSM642P9AcvBocpLSdeTGD/BxyOhY3py
	pXZHP8vuhIoNJG61lQLzktTX8zLY8uY3fOQ87AGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656699412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2U1+JuWeGNJliEzXdpr9oINFyW5TXoCvXQN6EmwQc/Q=;
	b=FCHLgyhfQs0PgTAPXs32NO1TSMDwP1j9EhlBlTwlJ6caRblgAB1S+HBoYz2kb6Qu
	0FAhuHkjPw7EKTlCPnMMg29oYNWM/6xIOoNk5T8EEktU0o9QwgxByxxvBulQnGp4Ige
	mFDxIINZ87g7C2yBO/azbMscrsRs/TA9d5JJRftE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bafadf8d-6d17c48d-7442-40b3-9e5b-bf692b61e331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eabd26e102ef87bd81a7f49b6480e8f76a83772ee2cba4da7fb584aede0764a
Date: Fri, 1 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656699412
