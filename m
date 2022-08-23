Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A492913
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661269252;
	h=To:Subject:From:Message-Id:Date;
	bh=kVbRI/8q6CPXNBsIb8rE16al/DrlraEeUf1kFhrW7Sc=;
	b=kZAHym17wCSqAIsXRXMIYGPQa1JBD/rX/bdpKQ5aHEGbfDQ6lWv1xoj5ZFqLS/le
	4KuRMKL8GVF/RTUQR/QHbwemBOll1sB/5LOQ9cN4iTRWXdeDsVZ+p+D08cmtQAz3Zst
	/uUUPRGoeNIcLT1eV9CJuLI4m8RTcR3YPqQy7Jpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661269252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVbRI/8q6CPXNBsIb8rE16al/DrlraEeUf1kFhrW7Sc=;
	b=IigPos64UqG2bwVRSeMf6oI977/jeE366XMIwOe+shTmLkL/c6U7lCbp1gNLoM7U
	Otad7liP4vVWYyPxBbAswrNZSuyEJHd4Ux9uYUIKBD+pVjJvDt4FUKLTANBjRlxFf/M
	eDhGFK0C6ICe6wN/NJtCc84DyqWl0cu34tivWlt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb5d19c9-e56cb793-5133-4a16-996e-4688f441280b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b38f8919d7c42f7991005fe81fe8ab8d3d0a70b7c557b4169be498a23f42c50
Date: Tue, 23 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661269252
