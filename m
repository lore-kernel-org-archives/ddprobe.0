Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1287C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659636652;
	h=To:Subject:From:Message-Id:Date;
	bh=+7irWAl3AyD1ARZgE3NJqIfCpEAYhYRRBvQWrx9Sd7c=;
	b=QFlCdUXREovGVjNkPBhYsqsPa/Sk7xRpalkKJSHr9He8wLYbZvRsN04bMepjr8R+
	WBHW6VjiW1CJCrxTYLOzVnacsu7M6mBJwX00e86EvoIc0W3fPS0DyJ3zefbgzUPtT7E
	mGxU4AarADAo+12v31BVcpMNW5fx3znzSsA/dttk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659636652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+7irWAl3AyD1ARZgE3NJqIfCpEAYhYRRBvQWrx9Sd7c=;
	b=gr9nR+7u12fb7IC3K9h0WqyMT+DHbfjYYbVR45GzOwUIM6X8ifpmgHS1L9cnz1Dh
	FoNdBkvp9XUh2tVUJgZ5L7ev7ofj0SZeEYEE/R2K6TeyrfnCNGsKQMGYwfuuU04SQbN
	f/CeaXJmKjP1OW754V8WHLZusiVnvv43q5oymJlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a0d9a1b-562ea40c-900a-4449-9214-fa3873c70e86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd83297880f03bca096aefaa08d685311f881cd2228b80c14b8c6023e33a5119
Date: Thu, 4 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659636652
