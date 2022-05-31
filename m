Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C523203
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653997559;
	h=To:Subject:From:Message-Id:Date;
	bh=UcUzTavcBdjxNUvDV5eFkRWYrgv4m055+JJXcj0mDvY=;
	b=MltX0VrpVpdQkzOJSReEFG5HhLKCz/krKqhjcTZQBcrkCaF4K/3iHDhig7FXhHa5
	UbIfdanthmI+qkNTTPwOe9ohyBHmC6LospHu+12Nex6fT2hi8B7ZHyKupDJGLyBQceC
	7gW4nGc6FZpR9w4MXPMbgaSBgDrSMvau9yRNeJkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653997559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UcUzTavcBdjxNUvDV5eFkRWYrgv4m055+JJXcj0mDvY=;
	b=bcqwuUr2ZxQwZ38RT+6+ya3CKhM3qycj0VkrN9eXJbf6X8w/lUhbek8YBAl2QqjY
	ZqO+kAOQA9OSg4k4JwEVafcFVy16xz7htCQefFOiljzXkalHFYbP/p92kG0AGr9U6D2
	7QGr1zfZjc5IODZ4fQxdNsalO37BRQKNFe2CiHuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119efddce-2e6ea6d5-8a55-4b42-bb4a-775fe0f39b2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28a79635a2a816999bad3345b4dff869898ecbbaa07ddec6829212ac628fa23e
Date: Tue, 31 May 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653997559
