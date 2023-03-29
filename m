Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35C7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADCEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680048305;
	bh=7GotB7WR8eyCl6RMUPQf+YaJw0i4+QgpVopUisX2Txs=;
	h=To:Subject:From:Date:From;
	b=HKIaKzFVrhGxHVLPo10v6k+WvP02JILBnbiMs8vMjWxV+FtaVOuFQjHCASQzRKDdI
	 ekx6YxgcLyo5BuVP7iVwj0olGi6e0fgM8P1m8LfovVs3aXd6qq94Z8yzi+QIiUkTHx
	 Q2zzKWpZXgWWx+A1mI1gO4quzhwWpmMIqq0HZkr/CWa8hycgK0GTdDhsxgpGkY6DeM
	 c84ahRuY/GvexmcOCFxfBTYquPyCYk88PkjquaORsa1lI4FQg7xdH2yZbPqBEiy4Qo
	 HOnvgXQ7MsaTGliFdHPEoEHSaIuwOiXFDpldQgoEgpVhoWH0ypSs71sLrgH1v6Yz9V
	 4u+Sk0WqRlhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC78C76196
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168004830575.701.3163888609313504633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65dcf63da94bdd8e6133ef35c2f225169bc4dd1fc1fade726f8c241811fc1f52
Date: Wed, 29 Mar 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680048305
