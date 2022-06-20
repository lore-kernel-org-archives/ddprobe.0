Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A72562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 15:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655739779;
	h=To:Subject:From:Message-Id:Date;
	bh=IdbfI0wb8MljSyYRWCUR3wuawqglyBr7msHs2FMIFQg=;
	b=RbfvN/4iE0z/g5gLunex1W8PstPzfmj4T8iTHVWpO1KqNL96Y0g10oPhTUGqYd6P
	zNrzHt1gcLgC6XFZfoGGKe/Fccx5pscrqrlHtKR6X3kKzjCUkdoN9rS5rZfmJGnvK6L
	4rvzRVCNgxMjd6pzwyU8fs9y7iqN6UNPcYUqqKKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655739779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IdbfI0wb8MljSyYRWCUR3wuawqglyBr7msHs2FMIFQg=;
	b=YvWNwlk6YSqtS8e0VikC6VeXMwG8YUArK/x/7sagqFoYxPVYsN17ivKxP8ODT8P7
	f8HUcxRV/7qvJtb/KF1zlehrXBoD2h5KYyL7IXEfTHC0IDPuAWr3O801rxe+u42HRuN
	xDspjFMw9xOcMQumF9phoOqorI5/nMiFWPPHPrMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181c808c8-c73b6b4b-6556-4e3c-999f-b580028c27e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2359e458e7d8a1769c9f6113c6ae3c3c659237edf959edbd6eb3cbc228da8d8
Date: Mon, 20 Jun 2022 15:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655739779
