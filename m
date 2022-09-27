Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B80645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70854C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664259653;
	bh=fWeHX4M+ZTxJgwrT9eNlOjCzsRoRiA6UZTuXAWcw6o8=;
	h=To:Subject:From:Date:From;
	b=rhDHBHioXi4JLxBcixmWOOrHRYLOR6enSelhMLvDuI8GA1A9++PcbPw6DrJR3XI3h
	 oPPdx464gU+sYb4QojIxGWkZuOhaaODKItQpt+wJV1w96aeT7FRPQ4udIXseoLmGVe
	 opffl75VigNJon71BvJLePfQs7f5IyeoDV9EDFjBdqH/a12D//Utz1RXq3D00p0npi
	 nSqy7j9idgcxPtG3qcF1agf72GBdrysuOEPTYNuCsUOZ1OlS/zJk0eHQJM6qypxROh
	 3TXWoVZGU/h5YD2UBsD+kseBaKZmrh89vWNy4LKcPEgiqSV+atchNJxApe35my9fwD
	 STLJoSjit0YHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53696C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425965333.6742.12249776589817532292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473d953d96781c5e99c44078a8bb9ee2e6e6a6dcb4362f7dfd706128278e4d17
Date: Tue, 27 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664259653
