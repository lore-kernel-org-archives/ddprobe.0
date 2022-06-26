Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B9817EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656232012;
	h=To:Subject:From:Message-Id:Date;
	bh=rn/MMyOY5MU6YZcGKeXjQl0KLb09GvznzDDx+OYDKMw=;
	b=Y6LBbbL/wpKCccw1AwNmTQ/rDWYfuzEN/RHpaQJv53cEEG8m59Aft4Qyaao4RDYF
	a+pqE/VBC5cr0GS0YU17l+FThuYLLlACNW6XQsYPnwGTDfbaQjfmJ8mtJ2sNf5fbh45
	v0FDmqpSOCayvofpGvsyP77LzYJNhgm6NMQjQbsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656232012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rn/MMyOY5MU6YZcGKeXjQl0KLb09GvznzDDx+OYDKMw=;
	b=c0pYxkXKYgFoaYh9pslMCVXs0S6oKES4bMi61Y2Bk2iHD/6yPeMguBSfoJ+kXkSA
	lHHcSfyTvN1oQM82gLVhfe+m3/k/WUZr2ST600A1WYOa4gr/yPo/aTJlBGcEYCy0O79
	FD1bxdpiiaUkWg9SnlsuDaaMxnFaCY7h8LJtrjrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f1eea02-1ac4e965-4636-42e3-852a-67bb9ee9f450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f86726c328eec73bc74837c44f12e8dfc4bd9ece63d208266c2e5e38813e6da0
Date: Sun, 26 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656232012
