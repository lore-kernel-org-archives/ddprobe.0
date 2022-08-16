Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5077E2F2E
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660636852;
	h=To:Subject:From:Message-Id:Date;
	bh=rYu02i+o9JYiyhypEdP8zU7QtPnMpmNQBoDpmCIn9pA=;
	b=DeQySYWqXpnBh4oOgsOYv9Zof4MmAlSFx3iazfMX1YSQR4qy+EhxpIbRtlfPT8Fi
	jazvHVYLxSoIMybuLpJtEDWRV0fXkTolQRn65d+eVdf1Yzqi9HsbrhGut/cv5Wktgpe
	qMjrQMpLq98rsCF0Bgin93MW1GJGsYdLJhG897yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660636852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rYu02i+o9JYiyhypEdP8zU7QtPnMpmNQBoDpmCIn9pA=;
	b=c7jAeCyFBIzCVQb0qdKuMB4tGfgCdtkWBG+tbfZEd2npCLdRHgs7EZ1bx0+e9AJc
	nhfQ7ORGoDZEVesqbe0QED1OD/kqH4wlDj2J9FmvtX7nnOuFa23Q5G4W1zv5YBp19fO
	NLtqm8UB8p8Kc1Ebxfy0gTsIw6C4A8YxrB567QZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5ab713d-242d3970-894a-4343-bf61-91d602588d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7c287b6074a11df38343a9d9fa709977f6c7595b9a4926ebd4fc0b70c4508fc
Date: Tue, 16 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660636852
