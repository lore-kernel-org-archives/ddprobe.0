Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226AD1854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 16:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652805539;
	h=To:Subject:From:Message-Id:Date;
	bh=zsHZ81iHZ5dOFli52OvowN1hl5BWd6j+yG6d45yEmgU=;
	b=a0RfYWrFRTcTxlA2LlXsJHOYY/4yQaVN6T9fFwFw8mtXq/b8doAURbnZFvGOG3rw
	/iKD3NjCuD2gP/zjde1jJPRNkPCtEZb9FibqMtfeRqpvnD4m+1j7jg2I7w/x7a/vHtl
	iHwYJB4uvUfP4eJg7a7VRS6fNINrSD7SqsOVFEOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652805539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zsHZ81iHZ5dOFli52OvowN1hl5BWd6j+yG6d45yEmgU=;
	b=OYl7Ff7usbmKuspQ75dNvHyaVuUJ3PvJh+tjSv3yNijyjxgJSCCwbfhZ36w/tFUH
	aYDF6tbU0h0h1XQ9e6oV8WYAOiUNN2AueX29a6SHagfjRQjKewI2SGM4OYAbeupqx30
	cqLeMkYBMVxeEI/24KpaQZJh/Sb6Qe7/O7I6PqSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2e31606-b7c1dd8a-21ab-47cb-8f49-917d59907f3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5254a45f352714ce66efd7c9e8df73d058df955bc7fc394fd289a4255983400e
Date: Tue, 17 May 2022 16:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652805539
