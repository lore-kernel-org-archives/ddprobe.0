Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FF6368
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660387852;
	h=To:Subject:From:Message-Id:Date;
	bh=e5XdK9C4KmzNh4ZNQICF7zJbMqZHmfKDHdZZsUs91R4=;
	b=fS9JL+ZGDqgklDC3BEtVxPOoOH/JbP65L0OVgr18r6BRW2Y1BwbsgnD4TzRyfEKJ
	oMTIHvjUlpdjbVjPNkHyDMWU1/R1061UiV+2vKOZfQLFcz/O2pMBLanXyBKSute2WaZ
	52nPhWPlpabqk6h96vSAglL9s01TcjQZJcW1C8sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660387852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e5XdK9C4KmzNh4ZNQICF7zJbMqZHmfKDHdZZsUs91R4=;
	b=hiFrVqChly6ggUEe7fjXtyt7fm9Nmti1fCw6IKHIgrGacMl8aC1xfnKtQpQ/BHI/
	zkuMotmQbNiMO4w+Vuw1h9YhHp3LNEtnXi2MGyrOv3YegtAYDF9qm/7QcgIwUrlb4Cc
	0XInu6XF7VpxLM3rQ7PELhs9IJs+97baf5OjOli4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296d400e6-14d7e047-ad18-4da0-97c1-576f3df658a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de233115e770271744683630066166f90577118d9a1c1fb10368a5d7b51f6baf
Date: Sat, 13 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660387852
