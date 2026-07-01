Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A693B2FC2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782892714; cv=none; b=Hn/A0g87XncqxrDqF5D8WiHgg2WmFqQHzDS+igPSTBFJoDReqTeg+ly0jwJY4O5hd6zRp1lkNFSE8DUAuQiJ203WkUUTuhPoi/59QLWxmXa4+eBE7HjSfh0AjtTkMiraJm1M7fXM6EUBMDLcAE3LixJ2RfXgXEjyt0d+9eTVKaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782892714; c=relaxed/simple;
	bh=Ig7owLlaig7tJQWJVoIqkxoVNviRMyS+jTDlgSssVZQ=;
	h=To:Subject:From:Message-Id:Date; b=G6J4YB2s0MmJdG5HEij4Tv1VcOx29HqNPXcONbvhuqLj/kgHgWgCSU9fr2LzoBZZZ4kFqUBO7c4EpWzpZFmndhIdEHlzaJZz7b/QTLvlUw4t5UeOFWZd2RtdtfdRkpYwl/D2ZtSTtD22FtzK5It7wB2kURMJOAwX+lR7yfqDZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ2dfP/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ2dfP/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4370C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782892713;
	bh=Ig7owLlaig7tJQWJVoIqkxoVNviRMyS+jTDlgSssVZQ=;
	h=To:Subject:From:Date:From;
	b=FQ2dfP/EIydq06BAAYFahOamP0sF38sTlFgwuGCPNH5Quo31lo1/CwujyJkm50fw3
	 0mS36dPZkrhppLwB/jdhbPHGMGXY1FtI/0f/f7d0XvKVIq9/YARKMXSYX8oR9LsDvc
	 OPig4cKmO4fIS2GefgqTq5QbA02cJotWhsHFdfjJ2BMgP2h60YzhNy1xT5pSG5vh3z
	 P3ycALuVgmkOXIvx6i6XVoLAl1zz7MVNwwVHf1BcckLY9ck1i5PQopZCTfdrpWPkma
	 AXhbPnO9unyZxIxGwiz0lRwX6sr1Oh6lAH4R4zGkOexkMHJcBNmBNoO1oTxnGx2M7A
	 NacUf/QZb1yYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD43C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289271369.18734.12722423630633208994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fb4ec227aaa4819a517e5a2f112d2f40273f2ae2ecc1005c64169377825428
Date: Wed, 01 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782892713
