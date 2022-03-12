Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D77361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647095485;
	h=To:Subject:From:Message-Id:Date;
	bh=G7M3Mm45izTP5A+qH1MfIVZStmHK5m+Hup7QaeMzIY8=;
	b=DHJwzE+kwbkqCinnJFVOSY+TdSSt7GcucsH0VIlOyPWdWzaeiiRPLKPk4rxSFKck
	2XMT/DK9HpQL/wgREZqkelLT3V3GTTIPyxqqVjd+leE0Q7O/2gICSohfdwwNFm8llho
	yi04NgKvTaE7QveJE/X0j+YjbGaE1eftOmE8EC5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647095485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G7M3Mm45izTP5A+qH1MfIVZStmHK5m+Hup7QaeMzIY8=;
	b=b86qW7a2iXOlu01RLmCNOi97XSEQ4l/KQFNZGQJMD/tX2JYtQ0xxQxB+vWSzlZ9o
	y/TcGEegDZV9gOh/3jbM7pJxdhkvHQIUEpahNsrzzO7dofr/UFKMPpJ1b0Hxe9BPa3s
	kRa67HsSRTalvpDpcdx7tAklbIiVFe1TlMkbIv4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e8a916d-2cab1de4-1870-44e8-bde9-2ac8b70bac4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4e44a3ff3d469a79a58a2b1a63ef7ed4e6ac4b7c0e8d3f0474d7ef971fd9a31
Date: Sat, 12 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647095484
