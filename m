Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB0710F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B78C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692557648;
	bh=GBSXz/QkGXUYcIOTmv3M6WnMILboH1CWjchlyHliH1A=;
	h=To:Subject:From:Date:From;
	b=tnimb01MApBojeO6mZWE1PS/zg+oUpbga28/A54n+TDs+768Zf7yuwxZAT0Y3KVaG
	 BLn/JbPNL/B+PH55mwT7V3W8zdkYmWLRDcJqbQrOZMYyAlArqsjhqQlCJ1eQJf21Qu
	 edggk186NCDiNpb3VUpFt57RZW/SevtaDpzPlMF5m4WHYaJdLXucTsCZYAw3uoe+l/
	 ImczgOzh0S34CHjh+XL0A7p+Jr3zP8iGoFwL10DXHBN8tLbjo2q4W9dGHd5A5wD53K
	 iuAFK4Mu1KcTZvnimo46y/AXsGl9QklApQqmfVA+1rsVKfNx+stpVkP7sG8MO1zEBw
	 RdT9/hh/Wt+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A2EE4996
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169255764866.18972.17549814151538272604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239f455b3e2a31d3bc6afd60c11e943ab532f3b0ca96a48c62d6505876a62b8c
Date: Sun, 20 Aug 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692557648
