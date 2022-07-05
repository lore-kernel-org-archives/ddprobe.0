Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC8518E
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656989812;
	h=To:Subject:From:Message-Id:Date;
	bh=SsJqsqQAJyE1p5jTN9liRpPfJjorlgznG0yAIHR+cNQ=;
	b=AzezfjGx0E/HzImov0s1167SUbqmKM2H6Vip65g/h65LMobjS3TVB4yGltOqoxgd
	d4F4ghrn6yp2QRL9LFCHn+eR0XGCusVfoipziTVrYVGt79aFVv8epuqAdC7LLmsVY8y
	3TjVKN2040VLoLvGNwY2mIq4TQf1xrv/AAn0LK4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656989812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SsJqsqQAJyE1p5jTN9liRpPfJjorlgznG0yAIHR+cNQ=;
	b=aHNf7r3dHpCNexQgmkq8sE6CVLgZ/DWu+MjLoUqnosLkAGW0QBR3z6E+6Ff/CasH
	iO/NOVEPvadPXvk5JANtn656U2+VmevTz+GS/l4E7CP+CXBlG4TFEIDUbN57tS83cT7
	hQvCN0w7hEPl3ioil3FDdTOL8qUOzbr+Yhqq/UGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc4a0627-a0f28bc8-8b44-4ec1-a723-b8bcb67e068d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 805e8af9bb5a29e823a52789e45684d7796867ff9217ecff741ed5df1dc20124
Date: Tue, 5 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656989812
