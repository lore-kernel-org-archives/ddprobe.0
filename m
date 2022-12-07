Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65B82102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C77BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670427054;
	bh=VJ8apajet0iaLWhePmVGz4RNLcp6B121KipOtxaIIXs=;
	h=To:Subject:From:Date:From;
	b=LcDoUfHu/IWlGbwWm9inud3NGLCu7j2gK07dangSwRyxGB70mkuQb01Y3ivPftZ/b
	 1rc16LtWSWiJOcq+yqNFjsEW7typINMdGGaPvgwulajQawWNdFwSWFyVM/RFRrfHxb
	 Z5KENj83U17k9xbK7bURyc4YpYE+3WVBvgpSvN37ziFI2XBKqXN7NhZK/nzJrP0HLQ
	 Tq2+RJ4B6zl1ejK02j0lu6ytOhodyKfHCoIIqDUzflgjbIvitTwgAszMOvjX1RpQAL
	 RbOp8RdnfOLrKeS7mZxXsVM8J8jQHa4YQtC/22vnS77WzPEkdUz1pakKcHkQhdT0vJ
	 qf8NLkcMzU5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC52C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042705436.1944.2885918491256322604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2316812db7f585712eefb4440c6567b9f8f7c854d12c83a67344e5179747b0a5
Date: Wed, 07 Dec 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670427054
