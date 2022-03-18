Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C276A5394
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647643884;
	h=To:Subject:From:Message-Id:Date;
	bh=dNdVHm7BQBQZUcsuMPu0pMtaX5scAE7srioGGn6aSWg=;
	b=aI8IJVuc1Yr1jsZ86jrmz/tpDxYUW34xanUFubHPsw55cFhpqcNdHy1J5fWrSCkt
	Tyn1hiLNOVGZ0d/D599pCquq41yAcnHAA0MbmrMshT4EFNYOZ5epPh03XmuxawxT/bh
	x7j+pyeqPhsZEhPh/9m+AvKu6xt0VpLKLy43dC5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647643884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dNdVHm7BQBQZUcsuMPu0pMtaX5scAE7srioGGn6aSWg=;
	b=ky0g946kBLcf7ibmZ8b4nk+LtTvIwOSsGgvV+eZcQXFo9DmXotYMt38k5p9ZESKw
	/WERvGC+CwQVwHx1CDFvzqvlXEj6TwgwfPvM8ODx59+sjIrJODB9JDHbm8zrhGHLjMo
	WZag2TY1pp58YtVUibIKKUSHULVK1CFoqcIqsLVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f3a7cc3-64cff91e-a64f-4139-b148-fe91a112b3c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 554d03069788c6f9eabea0da260d77304c17949057a9b38d7477627becc32782
Date: Fri, 18 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647643884
