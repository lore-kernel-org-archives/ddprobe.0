Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD4533F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659900052;
	h=To:Subject:From:Message-Id:Date;
	bh=/MaDAzGQYJDrOvPXKdjNdP8hjlwDjlnV0Be7VbckT1A=;
	b=PcLNIlrFE7Qmw0cXpQTEsT/qcDVFUDp0750YFFUSKOBIN5nQBLiyScwzqlm2XkLY
	FhPCH0tESUlCR96r3rpzzaUGMsNx9JqqbjR9fjykJRf7mYmIxFFdvJCb/zoHWsLGO2o
	JETfhcl3aLzUB3xZ0aLOnkSwKVLRqKWblPs0PgzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659900052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/MaDAzGQYJDrOvPXKdjNdP8hjlwDjlnV0Be7VbckT1A=;
	b=A5+Vj/nlG2jv7zX0L/8AU08sYWWFgsHxGiB3Zzs2ttE6Z1LbiNf+Ucpjj8zVoYzI
	MdcIQvz8E2z4ECQ2u3aK7p7FD+T83PBX6sxBvIyZRCWi7CypQ7xS09CyskZy7zlKfXL
	GiPQvfiZkarRiS2pMdxqU9LVWz8ZBhnjjiLRdR/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279c0c472-1831e420-27d0-4a70-b365-badbf3888e85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65ded50ab675e601429da8a02121304969fb85ea0d78bb82ef53154ad44b85ee
Date: Sun, 7 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659900052
