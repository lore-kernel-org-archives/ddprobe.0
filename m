Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CA6EAD1
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A81C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691490188;
	bh=pGmsvpTeWk+Mi35ag1KnT7Lp2HgUfXzGBRL6+Dlk0CQ=;
	h=To:Subject:From:Date:From;
	b=gad8rwAPuAylkwFjNfl0RbD/pu47ADQp7Iy/81kE01V1jR8rL5rmL5e5494VtJuGl
	 AFzcakD8fSkPWcVvaVi32F7JsQx1OKEF440ugmar2y9dnZ3l7HZilkrt4lhh0WXOMt
	 EmPIeW/GY+R1+61w90cJQqEEq50ldNEXPWI4G3dftBQ3rbiBlUBxBKszHsfQ/onSIC
	 31yMNxrV6LBwbUqfxdAofxu8teuNybyTuUpe1qnElG9etNb5pXcdHrmLOMLq3XmIXW
	 AL1DRZk3E1bqCJgIV6cJQhjLYyJwV0QVDQvaAaXpMCuXPYDtUML8yxEbANNxk7f7bq
	 MUW8ZILBCIiAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A869EC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149018868.25487.15158012923697366726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2555829e139360dd88c540e3ae9eabd009e55d05e787ac8d3f96c90827bdd5
Date: Tue, 08 Aug 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691490188
