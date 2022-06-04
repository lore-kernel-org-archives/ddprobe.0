Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EDD1103
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 05:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654320659;
	h=To:Subject:From:Message-Id:Date;
	bh=ArJmiYX0QRPaVY+VPPbUMvmJGwT2BCHaqbE31iC8s3M=;
	b=Qnq1yaDvMqt8oM6NdxgWxyj/yt90Y0NrFu2J7NFJKl/VoaILfLxa30OWS/cd3mYg
	tT0tzYNb1pOuYI5Qc2BrxuekU1oarNxzNtYWqws3JdMsL4TsGfCkBHWZyVk+C+8gDSA
	nHAFq4jMqEF7p3MhANPQFWngn9zkCHbpTNaHTdMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654320659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ArJmiYX0QRPaVY+VPPbUMvmJGwT2BCHaqbE31iC8s3M=;
	b=bc5Lt92ZjtOOwnOgZGjr1Ut1C/uU2TwKOdtv7o4zBa5O0ppkODey/8AP4C2Op318
	D/WFeTRsRfZL5673L8FtR68qqTnkKXKMxxveuzZPyg2nUSJ5Zrgc+NaTwkGEcPSBTJ/
	tN/v63AqTP2KhPS2PWyMJw5bzl8piR7GI/Euca8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d31fb69-fe511625-79c9-4c15-9a7a-9e5cabd4f8c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b979af966a1cd74d8a7930eb9fcb59f60d20910c047c512933cd7f93afd6cb7a
Date: Sat, 4 Jun 2022 05:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654320659
