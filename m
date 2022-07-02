Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B53C441A
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656805012;
	h=To:Subject:From:Message-Id:Date;
	bh=8/0g3BrdQbKAfzhd1hSaOO4+iEtJOaXHBCG4D3KRQXM=;
	b=BuOF21PSAPHIDBrf7Ufxp7IuPlt+fnSjUoFXtceGgNga/TK5JGBha/c1ZLW59S78
	O3zQiZbGjCL8mUscsQtzPylOb7IEQMqmGNLZsSvkX5Ri5DpV0nyp4vvNWL/KYGdJRoX
	IlSl6sn2qI59q79IP6U2qrmjcyRV2DtxWPd8zs0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656805012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8/0g3BrdQbKAfzhd1hSaOO4+iEtJOaXHBCG4D3KRQXM=;
	b=MheeIwf0H3jIi3RZTweBEMll926Ks7q2EwMw+olxaxIEierwIWcvFesnBM1XXZ1h
	77XdjAozCQZWsydvY+sh591tvG7buHJvSdjGSIgdqdCtf0xW2juqolAOLYr0MW1v0QV
	nr1JZ5//fOesbe13wR7PCFnye1aRCyt1xU+IBcUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1463349-4328adf8-ca58-4df4-8d86-6216e437940f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e85bc2d080f51b1dbc275263b699034d9d7b9560ae3d494fc00084d4cba8a73d
Date: Sat, 2 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656805012
