Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29080290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D368BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674826385;
	bh=xgJi4QeB3ScUwhhPAhM4KKoNutzFThpY1+7IZoK05Xs=;
	h=To:Subject:From:Date:From;
	b=O//WC3CJn+4nwb7V5uhHzjgJ9kKWeqIEysCv8IPX33H3OsAD5jb4JC8kSCREYbfjF
	 pACB1GBRikLReDZrs+29CrtGqWlvVaLqn6BXrj56NyCFA/x7lcFHPKIFz/DT5A/HBe
	 ljMY9TBfLKS2zjD6ta3GD2LgbgtiZkOw1Nx+NoDZ1SS0Y2GjCozPXQN6hk4r6EShPo
	 OIEKgU8IrPZ38BAwCZnAWwUc+3H4mmQoGzomV+UwctHrA6EZmQndyTEdHwMRFoM4Ox
	 oZn6No9gkzLinooYiEnEXHW4UcjDKlEw9ptUmJYf2nLPgAnpzbBAmfhH8sGu25LPie
	 fQ2oQQE3RQyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B335FC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482638572.13958.15993246982602544639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd07e3c12b607eb3e97a6508692544ffedb2e4304647c6c062d941114d2d2b6
Date: Fri, 27 Jan 2023 13:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674826385
