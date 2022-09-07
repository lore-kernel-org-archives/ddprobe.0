Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1D47E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721FEC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662516053;
	bh=zxmMX2aa9J6Ds/t5J1Dat+WgqwcZzC4YQUiW58eJFB8=;
	h=To:Subject:From:Date:From;
	b=KSYiXZIK8sAl/lEwqa1qb4PNYT/xf0m4TwhHxNhrhLVcE0eflI4MUjDGIy5SPOZPR
	 ONgI+gO45L0+D/ydvJt2om1+cTNGTnBgP+difa8zeVcL+7EAGxiGE1UfUMxqD/Xdn3
	 2PVfXwKFZ1mfS1TMQhzRcSIrRF4RP4Xb11hhKX2WFIqDzi4vQEaySFJjpvrUfNyGfT
	 ccUSHqNF6I3jvmbh1ZZ6Z3PAW5ZXMYfUSwq3QFdqo0ujT7dwouHV75OP9++SeBtfjx
	 Cg567VAB1+wd2Vx7A3dEnf9EjdX6P3irf5FEm0H/ep1sfs4mb0PrRcgfn+uWMYaTA3
	 6MP41qNE0r8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57169ECAAD5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251605334.12862.9978315274492116165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b16eed7faae163248d1f015150b1ade13b52645735ca629c302f028c721acfe
Date: Wed, 07 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662516053
