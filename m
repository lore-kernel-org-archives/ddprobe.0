Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722C3A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660461652;
	h=To:Subject:From:Message-Id:Date;
	bh=opb/k8xRHkm8/liYH/YJa6wL1yQFSJHtWaoMjSD3vD8=;
	b=feSW1wvX8ovW0Qmqub/MuGn6dG2JqtPnivsuS/Om/uFreJ590k3PW/AFk6sJGlPN
	0Uh2kTJtg6tiwekq9skfwLsFHbbs8ied45QktMc+CO7ZZRNrboPDCIT56qpn4a590fV
	UZ7tJy88lWLW06A8k4fZQyPRxJ7iwMLYAqN2J8zY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660461652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=opb/k8xRHkm8/liYH/YJa6wL1yQFSJHtWaoMjSD3vD8=;
	b=iMhcf2gqnGXFRkqjuPer9Lpnd9LrCPcwDUUq0d7OV2piz1L1v5PTQDHcr/C2XLNW
	BUyKKek7mwq4z/rdThRYZVlTMLkyV7uiFCQAvqsbKCXmpE55hFgogO3NA0x4k2Tytr8
	/mPICK+ii7mwBSFeM7fGzPWmQFiE5OPzsJfci03M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b3a1a64-34b9ac1d-bddd-4f0e-9283-c5c19e7f5659-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505cbc5e2a2db3809f446dd6124ac677cc0ba5e2d506cf0af587f9269eacf7f6
Date: Sun, 14 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660461652
