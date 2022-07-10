Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEEE1108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657437412;
	h=To:Subject:From:Message-Id:Date;
	bh=hNoxxq/l/b7lBaPfoKR53GpNjeFWxd1LEkH0fBKONR8=;
	b=VRl24Zvqm9CLZfvbHHKTVveIhu2we+uNU6ucwtCrgVK4ZUzr4iF37n+3YVUSuFfF
	SexaEF4wZn6wClvBr24r23fBn2XYzEy489NAetNFUsmmcQZPhzcZM2s1h6831AwDjst
	wny7goJSNFrpJtqHOBiu10sVsZmAtB9ny7WcWxuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657437412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hNoxxq/l/b7lBaPfoKR53GpNjeFWxd1LEkH0fBKONR8=;
	b=gxKCi+7B1WeVlP6TxzbQNVLTczOl8srjivyE4/tMUylXE9DtcTXjFoV14VeLL15/
	bp1rv1txvFCXNs7vuLtIvYEQjG/kc2Aqzjj+ksaRk2CEDwuYL/76j0LrHtLhGNh98+J
	HaBH6wJzD4o3wFfeVN5/Z3BtHXecT50AxiK8eazI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6f7dc33-774e5051-ef7b-4402-a992-4ab48fc87d90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a32a90e9661372ebf45f5132e85502ec2d967bb9f74be9c3d3b9c45d63a9a28a
Date: Sun, 10 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657437412
