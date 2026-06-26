Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D719995E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508714; cv=none; b=bRo6lLHCuH3b0f8iqoTuNqzg19CfEY1yt6fnmyLyAIiFE3sc/gxmUW0GqiSYrHjBtY3zTdmSXyMVrpRyeOH8E8jZZ0FJEIl1ihGn8Z568CN1L8dK3M/C4+GOGj2uNwmHXF3OxI+BwvtjuasakEKRIBBUZOJ88HLTfG6LBAnTnb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508714; c=relaxed/simple;
	bh=VdIJ3Nk2ZzB/3luKxU1F/uaqAq+RonHhFK78ZGMcCag=;
	h=To:Subject:From:Message-Id:Date; b=flYEA1qYhQVg6voo2uGr8YuCZ7DRS3OlapFge3j95kgu/nzzi6l46vHUlKsGDQ/2V7UYH6gg4bg9wrtA6Rm7dXUQc5+fnTG3KRFEXh3R3Qeybtl1s+Q6cQ27/j9y+IxK1XEGw6YOP98EE+ehP2ktlrXbkw8KtM69YWwAXRjCPqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7KVLkoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7KVLkoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA3AC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782508714;
	bh=VdIJ3Nk2ZzB/3luKxU1F/uaqAq+RonHhFK78ZGMcCag=;
	h=To:Subject:From:Date:From;
	b=Q7KVLkoVZtvxhG/2CFIg2txcaY3TqajlW+JZTKLj9urfbsuGM+eBXiXFShRJtUCle
	 2q3bepj2scy4lFZEaqTwtUKxfEDAs+YP7gIXwzdBNAcwQNE7EI/lLPW1emhNG73Ek/
	 4X2dHenoCjcILJi20zWiP+/zEJUojufHp4cK69TC3fklAPcLCtqouX84IvBzZQH7se
	 ZqAORGepaVNMMeHqOzAOSiAJFQnlFaqYxwXUUbez1d7w/1Ue40SXkuIxwm0q8DSwtm
	 idZ3UDQKZd7yoEqgtZJvZ4HsaEf9641BVrSvpgsdhPR497HOQvcaFD63vHPThmaDJq
	 8V8QO4o4O/9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DBDC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250871371.14071.16255511408800820425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d690b048977e8e93099e49713414203eff263a0b59cde3646d25f60dcecbc303
Date: Fri, 26 Jun 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782508713
