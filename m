Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37BC7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660885252;
	h=To:Subject:From:Message-Id:Date;
	bh=6nQICtqAFRG7HJ4Sq7voaQreJb66ytNtO5tTAdK1+Ss=;
	b=MVSya6ULozIIHzeqES7hpgugOyKKRregHxw6jr+8MdL6QJ4j+rnT4nrHbqrFgbah
	U+wi7y6BZXt9f2xyAz1W80jPIxDj7l5yHD1/8t1RVhIgdC2/SuTH5uVAs8eCHraQZNB
	/J6MNyDiN2j6t9WXWzQZCK2VSU7O09S85lFFHVHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660885252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6nQICtqAFRG7HJ4Sq7voaQreJb66ytNtO5tTAdK1+Ss=;
	b=K0k3Avi3mQ/P7LSEOBuJ45mPDxx5NCvrxXszvtzyK0c3RvvchkhHBWZvyaBhhZYs
	4Qu/J0a1ZeZUe1yObGoy+Dkv8avxESaFSom/xvSoYE2Yu2tjqIRO9I5aXdnmJ+1IWLI
	EczsG5hZIrEFmgA8ZgqjiYCq8wcANJTKqb1xvuzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b479b9bc-7ca09fba-048d-416d-ae52-2e96f1d3f7f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db87397f39683e3b08c4be240f2422375e8c4db38a92c024705ecaf2705ca767
Date: Fri, 19 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660885252
