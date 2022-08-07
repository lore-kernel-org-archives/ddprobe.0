Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0B37C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659846052;
	h=To:Subject:From:Message-Id:Date;
	bh=+SLKdt3X1COtJVP8hCbSsqeUeOB0PaX6ixZLbqaghYM=;
	b=Ak3sK4SVSO6hqu8XQyyrSELLQ1L+VmecDUBiMTYBwanseNqrAy5gbulqTTrrmY95
	EDVEQ4DIPVd4nLDqzaFMeULzYPmm4S7PlQYwgFH0kwyOTwkhNdHfIBuE31UpEs0xqG6
	P1paLOhwqgGjAXkzHTHeVk1K6nBcSdOw0JqVDIfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659846052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SLKdt3X1COtJVP8hCbSsqeUeOB0PaX6ixZLbqaghYM=;
	b=EgQyMIHJHSoVPrjvKNgqOCo27uhx0Pkeew//53BPtB9Rp8yqeoAmXUho9TEdR475
	gnkEUTnsL8iEzYedhRex0OoovZvwWRi03oqLqd3gutlDOoaqFFtphGw/J5h5A08NlnB
	Jyu4tRJrwvnDK/DsN6YWVtWrz3LNOxlGyfRYdL3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827688cb04-c7ae8331-0aba-4287-8f6b-8f066f7e6b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2888e59937c7baf6de5e2c942763762cce3ae17ac74749a5bf8a0f6fda2f3d61
Date: Sun, 7 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659846052
