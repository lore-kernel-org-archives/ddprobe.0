Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5534F33D9
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661276452;
	h=To:Subject:From:Message-Id:Date;
	bh=SFVFiXl4YJqJdRfWt/FtuA5ZrqmHZVEiFwvqqT/TCv4=;
	b=GzVuW6gytW5loa1GKMuhMFGFYhcIfmgecz+WAarNOQc6F8T4ADZh+f8RcjrDAKGr
	set+3PMd8xBxwZ3NwQO/Pb++zPqNLo8BTAiJcyjudyGchs1jLPUdGuTxP17ZCIBXBYq
	3Sc9u73+GL0YB2RVKi/Bv45eLMQiGte0+NbzEcOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661276452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SFVFiXl4YJqJdRfWt/FtuA5ZrqmHZVEiFwvqqT/TCv4=;
	b=ScfiN1JYqm7R9tfPVtYYzUJ8bK/QRJv3qjQKBAzIU0eMVZ05efCzLPjHUBbsD4rr
	4IyHLUecerO4c/gSlijBBVm6jCZUEVmwjQL9aFRu9p1mMrXNaFvlMUycewsTzzOTWzj
	9l7jCstcDVC9dm0MFM4uSkjbZHdZShecgNq5BvnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cbcaf6aa-a4a554b9-1db5-40d7-abf1-bd0127b49b41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a6e5783e3fc5eda93a58f6a5933773b1f94be22fd833d11dc8a6eb392016891
Date: Tue, 23 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661276452
