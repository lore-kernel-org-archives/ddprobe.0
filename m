Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F91C7F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654940579;
	h=To:Subject:From:Message-Id:Date;
	bh=zBEfONuGuLBrAPFI7pZJdJKWN+FBngXLDYvWA0p7TU8=;
	b=jWcx6QXCPaAlBPqduLqB7lHUE5htedhFIZVO0VRPPhFo1igpawlNmNrEeOv9PFJz
	KZkPlT7RtpV/SxF2IivVexHFUtoT0fefb8L3sSUHOpOhBLfbnzbJg1qH4/OnO0kPbS0
	yHQvFlzr5YWUifooM70G15ahJjs47vMtI9no3Peo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654940579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBEfONuGuLBrAPFI7pZJdJKWN+FBngXLDYvWA0p7TU8=;
	b=AQW9EDxe+ZeAWkxltw3HNyjIFgbl7mRUFTc4bFlO4ZyDVmBs2ZbmQNOul9K+dV68
	1FWMNrJxBqXzdvltJvmE3pj/OPuxohgrM95oEDuYhX3tWaBlHr7aHc3bfj3vlNRLnom
	+qw2E6lwHjfRQl+H2s+o8hfy+njcbn7uTqBHbYFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181522535bf-f8db539f-02ab-453b-ac91-003ae47db0b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c7de2ee0d6d1494ca4434a7481243a57e50c243a8ee6ff877acc80eb8b6696e
Date: Sat, 11 Jun 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654940579
