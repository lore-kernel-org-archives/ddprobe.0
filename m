Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AFD7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657546612;
	h=To:Subject:From:Message-Id:Date;
	bh=GN6xDcbc8ALdUgjNEuetPO03qGPNxKt+vWn7R/beNkM=;
	b=IDxgLnnhDWszSPYuSMY1R1hroEj5rHT0txg7yhcFx4p/lf9iqClokw1Ex93GfUMH
	rXSBLDb8q2avSfon8JdPmXBoThWqMuDHvOAxHQ48f1Vz47uCxWQIfwyBcT6bFxAFxX3
	YqLkV3ClmuMRGLaMZst0nlFf69ErtBgYdI6NP8KQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657546612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GN6xDcbc8ALdUgjNEuetPO03qGPNxKt+vWn7R/beNkM=;
	b=gkLItwtyAYdyUTIHBpikeniaGQSj0B/Zet9Y/2Jua3as9qJwFLV8PZKjTfYnPO2Z
	/66PxfO+0NP83YTnyZk0u2sno8lr2fM6urqwz8vFrBDx14K/z6X18RhV2qf7R/HF/xP
	0ErL9gtbNLU5Wt/leK1fq4AbS1Tm2I7SW/dNrjSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed7a1e42-db2e9eb1-af0f-4da0-b699-4b4dfaa60714-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 342e2b1e352b1c50bf0b4bd0b82c1bcfe6ea56186f03c6541c45b80b0aac3d1c
Date: Mon, 11 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657546612
