Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4775910F0
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656686212;
	h=To:Subject:From:Message-Id:Date;
	bh=dObGb8V/YjmSuHhQcL6NWe1r1wpS3oCZyT59acni3DM=;
	b=ZkGHW5jOM78DOnkIe5Ayq5mknCJBoWcraQRbakLY+s6BvdhhxA0hOjepYvEZ3QQs
	TDpbei9Qda5fVy/RIt0FZIsZog65p3rJnOotjYACdaESp2JJmzMwf933og1jBfKAt09
	lzpnaM3Ctwc+tWt1PZOaEd+AOIGeSq56WXrCsFs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656686212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dObGb8V/YjmSuHhQcL6NWe1r1wpS3oCZyT59acni3DM=;
	b=ASwmNEJTe9Qk78jsiNcq9sPdHtQqwkgEYM099S4sMqPkStOFjod3cbK27RTL6Rs8
	Wa7MuhRLyBO2gAAnCD2PNg/Tj5B5ZuZ2WliuXCp7a/evLHwvYWwogoVFDXI4n6EONJd
	BjX0HytiMiXcvn9YUFONpwahLsHE3wArvkw5sl5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba3174bf-40822a54-9eb9-4961-a64a-0ac8dbb00668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5784f35a34bdc650ab644edbff3ca7a5d5ae61628a6d831009a7aa1e764ff204
Date: Fri, 1 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656686212
