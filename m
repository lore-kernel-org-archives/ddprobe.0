Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D201398
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660561252;
	h=To:Subject:From:Message-Id:Date;
	bh=UqJTVqXkua71bkBIrXdCJdP7rbRnSRd4FK9MgtvheSE=;
	b=NsWQLzQKLOyQmvuYTQ8BN5bgBV40fHV0zldjYECn/IPYFTkoPLoEyeIWelzQWyYM
	Ep50FhQTRS/IifmTzQDHVOOsVIuuXFlm/8sSuas7AaLUcWxqASVVBtshhIdczS25s0H
	piLQCF1V08kVu85d1KzHvWiRL/63T1OVjXEsfTaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660561252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UqJTVqXkua71bkBIrXdCJdP7rbRnSRd4FK9MgtvheSE=;
	b=JytJy3pCViZDTGYWEbtp/cEpoUCB2pFM4E4JJ7UyFn0wTW2+cOX8hQO14+kuWZso
	moQDwfq7ufecI510acN9PgdUAFOUBFgR+UFatrBZVTcK1GVqz5wXEnX95yg2VFsa0rj
	ZAc/QbW//6tHdOAsX0QMEe2wJqqn+q1ptg4QjMNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a129e0ac-bb820bf6-586c-4c13-8f15-ce7d67ca03db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10de68f0411ea4fec083480f0b2cad13e2e01bc5dc582ad4797fbd7e15f43216
Date: Mon, 15 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660561252
