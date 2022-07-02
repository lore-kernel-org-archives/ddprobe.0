Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8966D1FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656748612;
	h=To:Subject:From:Message-Id:Date;
	bh=Cb/g1lNjkxKS5UdaxrziyMRd7mhmrLcp9yfKfdWqw1U=;
	b=eHb+/EhQf3ohufGQ+j+Z0qszdaRXrCi/1xLSHf/axzyCyMkOWSy3J5usZJzYZ1b7
	iJUamI7Sqks7vcijpgoeZP8KobtH4m/quepjBf+3LsMG2j+WHERIT4jZSU+NlUvB58N
	ycEHE0ZXG9Zu5xFgI08b7oO9TwkwIv13ngLtck6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656748612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cb/g1lNjkxKS5UdaxrziyMRd7mhmrLcp9yfKfdWqw1U=;
	b=M7lqKAGr9G6RgWj0t9wAR801jDzdpY52mziRIHK/MKv5OnPjXZ72kw/CYacsV9zN
	0qHi4XtDJc0r2QVv49E3kTebBcBXNFybzOT1PUQ3gS+IHx5oDaeKbKlo/auTyEmiDQH
	c2ESsAsDDkn3WMM7PBvxlF2Q1gcaCwHjSk+Elp4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bde99ac9-f0416070-3758-4c69-9f59-9b513f85c398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e642d255caa9860b9de933f47f1ef8d09468e90b5485266b5134a011fdce9c0e
Date: Sat, 2 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656748612
