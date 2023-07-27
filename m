Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9121CA1A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E2FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690494728;
	bh=l+Gp0+/67l+aPUN3kdlEQzsi1G8rgT7+3iA1u6vnJmc=;
	h=To:Subject:From:Date:From;
	b=Ryu7YQ9G/TkGsoEpHX0VORfBl9eaHLCMOmWiXr2E2lzyEB9uz2Sf586IAjMCOWQ2a
	 xheDdEc3GfE5T4f2bqw6N/rFYJniUUkw/6ZBeKzUHAQxisbchRbSiR6XVCb2gzu8VW
	 uGNN3aewQt+tvEjtZOgLxyo5Z5pTwlgwBEhoZw8ewosneoOyey7b+0Smcn6LQNI5sb
	 DULHL8k7o0zIhwTcWfaOkh2gVqqklk8ES8WEeG4EIXA77lTEkltay4uxzQLQexg5of
	 BzEU73OR6553V3uzRrnbFpOlgWxdHciBDk8KQrMywscbajdVw7Frh3Y2zeZHgPEMDu
	 vNHtIMPQbu/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DCEEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 21:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049472867.2603.12546409656942413904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a07ddbe9edb2983566dee79b4eccad4973d96957e9b719af1fc9616828ab927
Date: Thu, 27 Jul 2023 21:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690494728
