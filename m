Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B67A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 11:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654773839;
	h=To:Subject:From:Message-Id:Date;
	bh=FQTOHe3ztJHhSC+i+ELY//tU0OI26NTnYfNhQCYHYBc=;
	b=ezb6Kvd7hVRXuUlGwhbH4vvPTjK7OBNlRyHBX0/CMlHVurr0YV6CtGtFeDUQHlpi
	R2CH+1iw+9VpKFzPik0VPiPvPBMJoQp18vIbJI/0sro7pLTXG0PeBd3leId56bxq1Y8
	Ob7m9gwHodb3V4/7Z1A6RGDcxOiwIUGvO0Ol21vQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654773839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FQTOHe3ztJHhSC+i+ELY//tU0OI26NTnYfNhQCYHYBc=;
	b=dbYUI01G42waUQqzDwunHvN64Y/Gqbnz5Kl9h3BH+ywW1bIIBJjC9S34ohGjnMbX
	6MLTuGRPeifvqYONyOizrHPUZUzS5J987+eXpeGh9Zh8o5hjKwtqUnwsVogfhkpF9CT
	llkfyPD4lMeTcsCDDXgnzPq+cyjw3HqceeY+UQjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814834f560-f2b2a4b1-7fc7-4305-a904-1c1dd2ac7a58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5b7b549bb600ee59423a0b391f87ac60ab4959df12949ce83e74895a3dcbe69
Date: Thu, 9 Jun 2022 11:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654773839
