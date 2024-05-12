Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADF7CA40
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715487743; cv=none; b=Thhtc8aTLN9d+WxgWdXZUaIP00u/zkhzJfoQirraxM8WyEO5GT2j+kHjO81l+Wxdr8hKKq4CpyI3EbdQ4wZGdw6AEGWI3aQ3+dzKvak7cH7lS3N9GCCbLZEXDOVQP2ckTuZcUYp9OjFq7T7xxSh0bmcAHNAzt6Ec6wae6x7bqTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715487743; c=relaxed/simple;
	bh=w46AppKsk/HjuQKdU3/8xHEhzpM5DdZZsti+z3+M2/I=;
	h=To:Subject:From:Message-Id:Date; b=lThi+eCJcuLMQXP/hmN8bzeAuW4xaKjL5hCDQUg2+B8akw9obiCOx3/c5fenTljnzA8LuH6pEiGouuzDeCjjegcaAUabXtBG2ChSFTd1O509JGC9+6VUqSYfdRbint2j3N+8EbLKo2PqbjC4mAf1qYJL8rt/4I0pDBfXhMfAit0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdvATdz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdvATdz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DF5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715487743;
	bh=w46AppKsk/HjuQKdU3/8xHEhzpM5DdZZsti+z3+M2/I=;
	h=To:Subject:From:Date:From;
	b=VdvATdz+nnqC4fJvPq1n9thvMQ14gTRXewoPHNMFCRjniqJ5UWYLaPRL8tSKRRJkk
	 mAKxwHT3u/1ScD9QNq79YOozMg8GwSsEJbjMhoX0mTRZ+/EMmUa/ice7Z4iXyjtzHA
	 snYGVX/aieDbh7JYVh+p1H/TlCWS2Sh3wu/6ZtBSGhy0UNglbnhrVVFWKSQeL4D1db
	 dCo+CllRpsM1HbWOOQZcUlIyG91ia0tqGcpARvlhfMFTnbJh7Q/TzbGNmolZ02VPXr
	 6aSeTlQBC1vlpwCnEuzhixinwclnTcmAkbZ5eMQfl785RwpCtHEXT+TbSOtqE59TBY
	 ugpg3Yx13E0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F4DC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171548774280.4407.15439422002305273139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe9e182315ad42438dfde775881986f4c0e1876db387253846ed2734a429940
Date: Sun, 12 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715487742
