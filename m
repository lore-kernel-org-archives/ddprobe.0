Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CD77C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659756652;
	h=To:Subject:From:Message-Id:Date;
	bh=DBKX6tXiKQHFswCF48SKigSiCLHHz5FwCE9spx6eTMw=;
	b=cUXT9nvrn/0l03kTm7l8fc7TFyajRRhzZvj9yP2uHMYlCrfhMQVFwg149lmKndqM
	xOGo4EcURk8EBTUQleNYrlCQ5GyImr+ERC3d2oonBvCPsrBXmWFFtGiFoCwu9KjS7st
	iRAKmHGgbe/2o+l42FN/ygK4hd5/UlovhhPssyfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659756652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DBKX6tXiKQHFswCF48SKigSiCLHHz5FwCE9spx6eTMw=;
	b=daa007iHCxhbNVXjtQHENED+DOZjzpFoN/uslDkZH54fj6IcvaSFzJdZjI12D33a
	2fk09GgjqBr3kuuGsOZwjAIP/bYTY5JIG2aCA1PKlna1/amb0FbmqJK+fwiOCxy1gCN
	aGtF5779k0Y9yOnoDVLAVMUbg4OyVWHBfaPpHch0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827134a866-8f14c37a-bb5e-4139-a0b6-e10f3a10095f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cd33e7a4ade56ab26195c6d2bbb8e08ded19c5bc01a2069e777d9f7cbf7def8
Date: Sat, 6 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659756652
