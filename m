Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAC17A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 13:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652880179;
	h=To:Subject:From:Message-Id:Date;
	bh=SYVkQ/49tROxp8ePc7uYdlG2dXDGUWLPqirzBH08p/o=;
	b=HhzImLkCXPqlT/5Fv+zRuvxxUGz1oNVUy6bDxcD2ZPvivNXPhCEIoJ+f1OVBpNKm
	1cvufeBFDEhP8D3oEEkE6pMD5zuOl+NPVtvXBAqGdk47DeVlwTwXgqavNXb7z8JtVek
	TJCpdGXi24udTnFOido2OvFk+nBDpdYgxa/3g3ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652880179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SYVkQ/49tROxp8ePc7uYdlG2dXDGUWLPqirzBH08p/o=;
	b=V/lmrlWU/+MOuV5Q6WpzVSHs/nbH+4uDSWUYIp6OexWjhqFuTlLh5QEAzE3QsyEL
	y3mo7yc11JslfRfXIpXhTrkY4cIAxOSw6RZ5L8ITU3O9jlUbr9ihnPZKZ9xLvWDYJl2
	KoukCSN9o/lpz46hwxCo+zNRaW3y7aa7QiDW1Sdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7560045-25aef645-572d-43af-bead-c3195f64e4b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fcc731ae4b4dc559e1580b56a62bbf87d0a2a1f753f2973517bfc2ebb06a905
Date: Wed, 18 May 2022 13:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652880179
