Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C27D1FB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 18:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655229899;
	h=To:Subject:From:Message-Id:Date;
	bh=UH9saXoED0yPDEUJl/BkvUAv09ftapjOkRI7/iyQV3I=;
	b=An5nkaV0zRQh7lEB7j3cnDlUNGGRUq2HWTYQbyDf2xm/ojN6GW7hobztpb7VnzJL
	4VpbAj884NPndiE3KQ0dSBQp8WZexPIFpu79yRBgYfTng33hYuJVXXC/IKlQ74huxjP
	Fsvy57Avk6TW5D+cDUYq4TRDGjy2HPyHjiFNhywU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655229899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UH9saXoED0yPDEUJl/BkvUAv09ftapjOkRI7/iyQV3I=;
	b=jhL+27ZJNh8/2GGcZCr561cz4kl1IBZy0ADI2Kcn7wpwxi0z5RtS3kSiHC34ZuK5
	COK/J70CQSLXp0xuFSj1xDTRCTXQi9mhOU0/HfKZNplEnSmW0MTAKLU45gL21GVd66i
	nHoAtZauaDYeI+IzkhMV2zVj0r9OdT6YWYkzurfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816363e203-a959b527-2064-4804-9e68-1b24d526ae0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7b92cde2c46e36f3a7159106023ef78bb954d75c8f5a9490d008f55ea5c45f9
Date: Tue, 14 Jun 2022 18:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655229899
