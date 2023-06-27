Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9390CEDA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06D09C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687840989;
	bh=EitYhFjLzoH60OW81h72K3UmaImBDUufkAcqmyUV6Cg=;
	h=To:Subject:From:Date:From;
	b=XahjX8hF4+r7NT7BPwjUia2FoX8v5+HhWXU0nSuPR/5+bZyh/aSJJAzl6gdZZsKz/
	 3IBSNEDgbXesN6VAdBnrweba3dt03yUJwhzHA1pn2rJtVGP16WP9AYPoqXE+ZC0YId
	 lW29y2Cs6Uowj7b2jF59XuILZsWiyN2EgjbZjEk0Xk5wHHZ5joVwhKbZNtGgbjFuJZ
	 kbspAsmOuAIfv5mOmBfWO4w/dYJFyDVnX4GsemQfci/kJGr2NQ56INoeWSuWM7Ed1b
	 BvRwRoMRpMswbP+FI/v6RYUmXRCA9uChozT3DQ/mwGInvqkTeDc3p5e4Nen9grakWK
	 Ce2t6qSiqqtYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE1C5EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784098888.2784.3285668315907752146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7776515ce55af7709390db87baa02f27f49ff9ebff6c5fa49ff721fc5aa68c9
Date: Tue, 27 Jun 2023 04:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687840988
