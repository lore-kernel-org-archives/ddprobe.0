Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634291386
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659787852;
	h=To:Subject:From:Message-Id:Date;
	bh=SW+FmWOWmwJz083VzPd7QHgreSQY16n/kRTjEAJQjW4=;
	b=MmNDtZLRfTbYqiFCZKgpcNC5/XtRc+TeYwCP/nbQ9O0z4x9W9xY0UjcfccPt0tfD
	mr1RnFSRBQ0WO7sZphSkMcRqZQdBBo8d8YN/+IfoZ7qCjq/RGdpKme8TDKcFcB09eL+
	u6wol89BKwmfazXxKRZHrWUIMj1ceH3nsIOybPMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659787852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SW+FmWOWmwJz083VzPd7QHgreSQY16n/kRTjEAJQjW4=;
	b=Ng5dUvjcNi8X17FiZdS2x5cwPtA81f9hFZgHhGVRk1fwZ+PBAdwP+IxfEpT4mUvM
	JA3v6t88vngML6wRsj/7gAuL4KU2K0K0B7WKLGL5TNjV3HcPXDSCG+FGC2+/6Lu2Ydo
	7WsTdxbC1RSEQ5ea4yLzxSPLPSTCZ6yR8hA/T4+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827310baf9-f8416833-67d4-4312-bd0b-ddad17aecd94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0dc5e13083eee48d8c378e306c0fe92c482e791c753690b6c6ab376496b34ce
Date: Sat, 6 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659787852
