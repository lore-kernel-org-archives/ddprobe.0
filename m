Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5473F7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645778184;
	h=To:Subject:From:Message-Id:Date;
	bh=mcgzclYYHVZlT9P4AgHxZEJcDdK0FrxEOIm4gdrtT2s=;
	b=HXux8SRyQ0amBq1G1S5jpthtHRh4TkNO77iPVtrQ5A2/zYvsunOZp+34mCthnL54
	CWUYe+yup0WsedUZyAlv69zAJPvyUGxWFFdaNNOTVCvdTo+x7I3DOiqwFSgIiOqPySz
	RvBnz6jfh6G3NtkkVixPMlb4OUqkPQ19A1qTDH5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645778184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mcgzclYYHVZlT9P4AgHxZEJcDdK0FrxEOIm4gdrtT2s=;
	b=YKwhXDJgAmsFXuQeHklJoxi6w/1GLY40Lslufto7ewoLXpK0ra/uTL4x5J5qohlZ
	RI23Gm2yP/BD4vLwmr9/DwnQH+TqrNNUjRl8gABF4lXwSJc4Hb7cMVkHEp7IOFu6JbM
	wf/9a+q9FPFaWTC4fRJkQBYlTlHQt1ec8IHo5aLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30062a1c-b206b39e-52b2-455d-9553-c4b4079dd97f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f98593f7dbe24598b227346e52710624f5264d5594c03236830ca1023cff9e65
Date: Fri, 25 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645778184
