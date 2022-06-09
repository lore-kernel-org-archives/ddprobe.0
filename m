Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D011F33EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 19:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654804379;
	h=To:Subject:From:Message-Id:Date;
	bh=xvL84IRCvAZwOkbmu00M0LTOaDR3kx5Tx/rkjQLZoCQ=;
	b=PA4S+oGv2Oc20rGgam5TWgYRiefASDnNttVtDr0uLPBjyx0OfE+8D6LYMOpsTIfV
	21D47GcOROq1MGm4fh/IfdtcstOzsBeG4bT7pWWP/tGPWLlB87ky13bbAtT4t8uvhtN
	1DDkA0rUwGCK5SiODd8LC5ea3aOGL/U2CfX+ffAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654804379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xvL84IRCvAZwOkbmu00M0LTOaDR3kx5Tx/rkjQLZoCQ=;
	b=NUGOshVWJ5ElSo43oLpvEAVoCmL8s1oSHla6dvii6hMrpO8qEj83RnmVNPKF3m0U
	2CgyryKGY+h+ko87fzKfOJ7bh0oWwo1Pn1rjThJaMqytkzWdifF30CrtMzm3ATgYTwx
	gerz0tsipu5eArc3kaRN0+6joMTFHyoLoTKVDvQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a06f668-a895eb2f-031b-4dd8-a311-1224a696f7ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39c4ac3dfa94e76c0e09ef704130858b5cb9fccb8f396125325b9775beaecf2e
Date: Thu, 9 Jun 2022 19:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654804379
