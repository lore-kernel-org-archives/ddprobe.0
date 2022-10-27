Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FD510EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FA2C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666831254;
	bh=MI/AwZGnG/NXiTMBbavAyoRdgg7d0+SjRxPpm4xK7vE=;
	h=To:Subject:From:Date:From;
	b=pvYOUYvieu4D+yfUrEkyyTB7/+x9Hh2nCt+Lem/npib99/zirDG5uoyMWcCMiSUFd
	 TGbnjC8TvazoR67+R+ZWbKU450x6cyCuFMgUvXVaioT5buVg8VopF5Q49MuytWvJqx
	 u+x2xrvHgqCfhCDwOwhJb7C2+d8Vmz8STNbDs+wkia9+eSeMjkI4CS4dgUmN0ESAR2
	 qYXms6e6jR9s3fL5COKqW2DAj3rjQJ93Ry4Liza7c2m/GRf9zspE00jEFwT+6ajGbd
	 I5SNeJLkxI3fOohrGN2kH3HrDSXfwU+nNGzmNx+quYH6RNrvPB58ljiu18aXJoxahl
	 dTgTt+MKEE5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C92AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683125434.473.14364764544549243966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64efeeb9114b98fe5b530edef19de2e578148d3a910191dfe77f352df18dacca
Date: Thu, 27 Oct 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666831254
