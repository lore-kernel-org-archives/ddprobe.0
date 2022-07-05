Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1330D7C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656995812;
	h=To:Subject:From:Message-Id:Date;
	bh=HfIouegBJNEixD75J0+mAA0otYJMF+wKF6PSsuIKDH8=;
	b=catFPwT1wKvE71qYcBiwJhR+H4c7miByM43X0/s61MP+6ffJF2ha0euQdCuAbNto
	Udj+AZTXOxK3UUm6Y3xUgIoWcEBYSv6yD0FkNIB0SKYSuzH8xyksydWcW839HncpUOG
	2TOQMt4pH+3cTRzZWZTMXqq9Y9hR54pwgSCQzM/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656995812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HfIouegBJNEixD75J0+mAA0otYJMF+wKF6PSsuIKDH8=;
	b=f2NaihiMdanfsYG82t26rTVyAhOybANKqznZyFyvudLlKTmehi5TRA+h9U1N/ylc
	JOTHd5OKMjMMDSH6xlQ9P80XbwZv+X4Bgp8dWx4BOvyrXag3Ik4trOfVWdy4NY4hOOF
	nZOTChvC3Y+ATTOiq6MTmhfrYzQ/mkI5LpCAnBsw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cca593c0-604408b7-ecaa-48d9-bec4-4590146a020f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe5b45eff6e01cb9a27e62c9928ac18429e54e1904dccfc5ee6c07559e6e9b51
Date: Tue, 5 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656995812
