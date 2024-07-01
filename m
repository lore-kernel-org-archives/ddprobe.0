Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5851A381B0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719870923; cv=none; b=QdT8JeFbT6ygC2AuFAAtR0kUapXl5WanWB7pjBZug9xT6395PfUtuLHrlptB3vt9+QnQNOATC4EnnqclpFS7D4nnEN3LKxUJ0PPp88F3+2s63v/n/8Po5EtA1Okd96R/RMfFvq0Xtxwlzz7KBpwy8vnK3hzJRgOU9eA4pDfVe8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719870923; c=relaxed/simple;
	bh=2G2PTJc1KNe0u3zjZr4SLvClz8cub6bD4WPLWZ1+f9k=;
	h=To:Subject:From:Message-Id:Date; b=EKzoAO/XBSzyNesKqcKqCO06ac3g0Exr7e42P8vTTOGy/yk+FKoxtH72p38fERlL76VX2JALz/+S51xBNHcqQxWZmE2OIB+ti5Jg+zXxcqs060RiCp5VcU4pyIahSVn+i1mpYj+cB1DBZmbNGRKBbJZMHP8SG/fcvyuT2/dQ9QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xhxr1wvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhxr1wvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D33C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719870922;
	bh=2G2PTJc1KNe0u3zjZr4SLvClz8cub6bD4WPLWZ1+f9k=;
	h=To:Subject:From:Date:From;
	b=Xhxr1wvxNlqg5Hd9f8n/oLRsDjoCp4ME42UqwKEtlBCPWzR/DUX+E+zhO+7HHD5Zl
	 zd35D2HEgEUkv+rEevBidoRch6nFrIuQ4eOqvlLhUEPDVkiTnLFYm38WrJo6OLhDVi
	 RdUOJ2bjipggwADi+QaQcNyRYnWPDERSSXilij7+CHuFZwO1hVXIy9hVHZHB/Ellho
	 V1AWFbPdYPPDcycXMMEHO0qva5MgWfgX0qJuZSG8qnMgcRmXlM0loiiD+6FM3PnZRE
	 YvgCC1CnuYUx1NG8UPGikvm/QZ877ehZBBnuxUvsRQQWOfeUZL6NT1cWyKKcINzNQx
	 qDgcSqrJzd1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59DAC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987092277.7493.14005279006450426298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ae6be9ae76c092436d7ea5e5bb2aa1fb031db3485459a11bbab841e4570595
Date: Mon, 01 Jul 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719870922
