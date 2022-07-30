Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538F93C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659225052;
	h=To:Subject:From:Message-Id:Date;
	bh=Zw6xxFho6Bpxep1sMRCrN9oq8OJZjj/vjZDTm5IPCi0=;
	b=KBmfIzg2mwrt00KNTPp7263cKLgK1638+hd+mRodK/AFbCMKu31RXnU7sw6g2Vo5
	SvsC/Sx8+4jub1l8hHTJg3RRAcCZbsX63ZVyKW5gZ9krxuI1eY/lvIibWxt/BQijL0A
	EuCqtZ4afviQEe4JqWef3vd6Duj2e8AEnj+Ht7vA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659225052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zw6xxFho6Bpxep1sMRCrN9oq8OJZjj/vjZDTm5IPCi0=;
	b=KnUl9EGxqf63o/hArlNnaXSHCqVDYIdn7opdGaRbiusuSZ7s/w94PUcXKHH0zdZf
	atRz+qp8mSiNPIn1EGzOlNsNdnKtDtcf2dQXNt9Trz+2p2JI//H6AJBGA/FkflFzqR8
	TGCNGOGj4o8batZyfxquiJKQ0iAVCtrKDZNArVaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251851560-aa848499-460a-4270-beb4-290da1449656-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 285361fc2e79ff475009161facdeddfbeb30d914c6da7c983376334cdb2c284f
Date: Sat, 30 Jul 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659225052
