Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2337C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D939CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678938005;
	bh=tq4uSBin9v68mdyFfMqxhkejwZFFzQOHC9B6eo6Lbuo=;
	h=To:Subject:From:Date:From;
	b=WNcvxPnUCP3BEwPhWWR4aMwmfh8VXr49MPFFIW37b7o26u4vUkJ03z7H6s9Ec/wom
	 uSAE97QcM3ckYFU+Gn/fddat0ZXm/1jyR2+jAxRmEfHFQiMWEOfBR8NgS/wH/jChI8
	 XhPzgNA88MNpos+ZTTyIE4vgz+oQsOlwEee4n+JZa8qVl/oYkoZdHoFCM3o1gcg2xK
	 WVs/IRzNwfINPcaeoy+QvagjNEpBPc5a9C8Pr78CTFqashZ83Qarb5zogBTz2c27G2
	 Rnoe8wxbmYeL83SBvamnOTwc+cK3QwplMyzfdlulne6PSne8ND+qbDJqWV/0wYApOj
	 PRUpL9EgdrNVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE93EC6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 03:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167893800574.26191.4930726785037407097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568f1d32aca7e1373cd6bf9bd053ec0eae2eb9ffe7298c69c2f9146cf2fe29ca
Date: Thu, 16 Mar 2023 03:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678938005
