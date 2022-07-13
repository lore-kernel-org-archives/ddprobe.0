Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937315AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657752412;
	h=To:Subject:From:Message-Id:Date;
	bh=JrpnmbKDmxGVRQoY9rhZofjsfmyhA/Fetz0UAs4+usU=;
	b=KvHhOEVOptrShvA6XMl0+6sYJf8pk9gadJJCOfCysQpF0csx9ybq8MgPvb6wH44E
	pWSKx6hg/vJqP4cT4WbkKcmwl3BAHKeczlxz2R6w421acLBCse3nZHpdxdM7AwUkGem
	yM66xd7pZl/dru8yP7wlg7MoZnKagkjZGmJ5gZfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657752412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JrpnmbKDmxGVRQoY9rhZofjsfmyhA/Fetz0UAs4+usU=;
	b=IOFyKAKror8q6SPHQAhSHzFaunSfmDychO6nrWsY01MLDlPpmLGBLZmbZCp2h//t
	xjhJqBThTzfKrthndXYj11UXYiLyxBq+0Im2qBJm3wVhiha3EyAYD0kAja23zDo6UHk
	fM91kMPdJ1JBwmmQ/RWLm5kJ0jpBE63Ojrh6GNAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9be6085-9704fd81-c2d0-4796-8007-8904b50f720b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 833991fa34f72402373d65b0ccc1287cffa4ba774b6aba6bdd28224313eb3af2
Date: Wed, 13 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657752412
