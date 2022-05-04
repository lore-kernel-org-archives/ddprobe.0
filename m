Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0277F
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 13:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651670398;
	h=To:Subject:From:Message-Id:Date;
	bh=W/P7vADMwK+wHAGDNidW7ulN9y0BIeczYApEfZxPYS4=;
	b=j/SLYtyWQToUpFwiJW0DlwjvGPo5xSexG7JoFOXu/kNV8moDeKXJLZRstxt0738r
	rcJQV88QxktSzhQwTTaR4qlRZqcEKKX7G+CgZC4FBpThTJVJSeyfce4j5vc4/3bfCJu
	hK6lZOYkjJAgtz7n/zCKyet/jCYuogjh6lFifD70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651670398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/P7vADMwK+wHAGDNidW7ulN9y0BIeczYApEfZxPYS4=;
	b=I+reBICjy7vX9VpezAT2sXp6sPzCELJM/8nz2LKNkMtUdi8Vy7gdmruWn+Y2+8/D
	PUq6D32aYd9IcLbX2df08PYHacei3dGRzrrDpe41UCYKUCY0hlBnMXgvjy/6mn1/ssW
	vuHtm/y/vsMdRAzk/mP15TixLf49MoFZekVkj/E0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f3a3545-b7c17963-1f02-4502-a638-61570acf7afc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ded331244a17da384fa92f9fb59ec16fcdbd21159e0e270ca8b242913e567a3
Date: Wed, 4 May 2022 13:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651670398
