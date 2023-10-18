Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764CF15AD7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 11:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rkuu5u0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE327C433C9
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 11:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697630293;
	bh=C7vjrp4sWY0i2SfojT0cLdMpNMmjZjf5x5GhQkcvxF8=;
	h=To:Subject:From:Date:From;
	b=Rkuu5u0NFPgvxQJrTKupaMNTUP0IYiRQ+RA/dR69WdaekXzYddcoQOMwXfcnHUCIb
	 1OZEhxbZMrDWALxQwWOY/Jjt3/oacTiadwDQPPUh06hhGHzpVKr8k8I4MGTTqG1GRZ
	 l7NgN4oac2eaAf5HyIVN+mk8xrypoQqqfOmdkX6tqUJ4mTGkDEHTouPz7Zp3/loh4n
	 K+kkdIXIahV2iEvWdMScURaN8/run16SO9LY271YPUkyhsFE8LKD8wXQb1w/ZFYX+t
	 ZqkZVMEPpJcAnppthh7kGQqhwgyBWDzqy9XiPShDMkovQc4APMdTCE7fo+52XZncrk
	 AMCSfkIBYjt4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D107CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 11:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169763029284.5053.13463358111794798015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36494f061c44edb81413e8d0120ef29782e931eb201b0c315db09c2c91d6716a
Date: Wed, 18 Oct 2023 11:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697630292
