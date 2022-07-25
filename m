Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC2B63B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658746012;
	h=To:Subject:From:Message-Id:Date;
	bh=msnMQAJn7zF70CFWhmXRQHXVmTC3nszLNN0OSzGDCcU=;
	b=Ij8iQOhAwLSefxy4TLiktGp8H78jMxjY+FvqNDc/k+1hxbth3LvLM67JPzB6Vetv
	joaACzCf1JkP2/0eHdFTwWVFumCgnxXUPKnnuMZbhEnsxrrqqDz8xDpa4JaBwC/flj/
	T39N13Wh97qNuXtN+H99pQXMer0ViiEOs4EtQqMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658746012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=msnMQAJn7zF70CFWhmXRQHXVmTC3nszLNN0OSzGDCcU=;
	b=dAF2CeKBrOTXWe9qZYZ2zwsAf3ci/PaVQ9cHSWpiYrGyk2kZCkJjIu1h6qsB3haz
	/XNd/qZdIvlwPX4PyTW2MwkrOnRTbdX7Yq3xf54fOQghMouoWWRKQokVeYbDzE4JKBS
	c09nml/86f333Am+RvmTdzcRtBSgexLyYlQlcSg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234f7827e-cdc15900-58d0-4bdc-86ae-3efdc7fbb8f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 688b12c6dc471c5235c6f2c4e2335bf2290d1dd8cbbc632ae013257f65ea232d
Date: Mon, 25 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658746012
