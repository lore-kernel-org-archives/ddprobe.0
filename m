Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F53E56A
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FE5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694624648;
	bh=ux0n0m08Q0gIOJ+V+lTNTgyfJ14dZO2+p0rYMKQsZ9I=;
	h=To:Subject:From:Date:From;
	b=th6tuleJ3vcKlmQrEgF46m5MsuSy4btVa4PiYx0jDPV0U7XQDtTy0xFSRtvhk4JY+
	 9MZ7cqAe3pvtIdFgGMAOw3fkpE4Io0Gqke4hkCmb3aIEDj0Wfe6AsOOkDUj+bIC1cD
	 io/Wdj2Pjk9uztkPUeWUAxOm/PU+vekdM5fBlWYVs3eOuGoYfsx4NDAapo/wE+Mcbd
	 yVh8TC71KGHg7bRapCxXBykkzNydzg+l9JP73PEQsW35NC84l0LU6ri7u/U9+Gj/GD
	 IKKj+ubsJLUXKaljBaEr3H6iT+0K2aKrQRb4cAkw2XtOhRle+R58+Qd2uzWYNxQaGV
	 ljeLQNjg//GZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF97EE01E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169462464870.16868.268484278510784723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d849a9390726712c8a8feac368b808ffe469febf57e82fac965fe19753e26f3
Date: Wed, 13 Sep 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694624648
