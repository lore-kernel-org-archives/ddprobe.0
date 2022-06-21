Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99AC3D8B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655830859;
	h=To:Subject:From:Message-Id:Date;
	bh=KxpXR1o57v6kaT3g4BqHGN6WYD0JboV1udcAwWIKNa0=;
	b=idiPYoeFjdXsBLWFiEEv2BCKQUrBmtMv4iduzvgpac9S4YRMYuIWtTw39RglxJeF
	mFPqIfWuwcVEnFngbKklDJfiYz07KCBVrwjqQN1FiGhxZWBHjLI95NjKNN6POAAUB7x
	BD9yYClEy5kus11zn7etWveE7sfAddvJNLAi+B3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655830859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KxpXR1o57v6kaT3g4BqHGN6WYD0JboV1udcAwWIKNa0=;
	b=OH4KLWKwK7wT2KY2YyzxP/ThDwX/nMPzssiwZRfuSAWOWaniJ6LULwpNMAUQPA62
	wFJzc3T4PVc7VHItHD7aglwQtnBRRqTZLWPW4wmlFD1Us5fCh/zDRKNfz1RBXhzUB3I
	GTlpcycnYLrUi7Dc1tC9nJ0e0D3tRyA2Inp58UCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818735cdf0-35b79861-b89a-4aca-be12-f0a24814175e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 295de1d696c7e7b004896e88a76781e0c9adf9fc3d33e01748acc04020c82e30
Date: Tue, 21 Jun 2022 17:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655830859
