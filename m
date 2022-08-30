Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9093200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76368C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661868653;
	bh=D14GjLxA3K8EoJaGxubIsET1xF2bmWLREw//lalqcrY=;
	h=To:Subject:From:Date:From;
	b=FmoT20Ec1mQFLFc1I0GdbvfcBGAOcHka38XIoNyCNm2czFqrUSwb0Biz9n+R7w0qn
	 443rS+ZkT4wa7JFgo0aYqUAod78BedwSf6Wf9WOelholFoBZVGUG+D1TL7l6H1dK15
	 a1/2lqwE0HIhAwZyoiaVDtrnS4z/+vebu5/57B9As/nyG1BcjWng25cSIHft7oGgfG
	 u6lWGI4BVlZN+5atV0NiuKXTsL+ed/4Ie85y/dxviJYP5qP6ury0KSkaiE67bO+pMp
	 9ff5zSllrycxalw4+GefsTjyqN9d7dGGb5Q9dpxXzFJwsdGohuvYwnRNW4SFhTw3In
	 QIj/Y/qYJutAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD39ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186865336.10259.9127248371976715838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39088bc52399794bebef8d82e5d3f5be9bc75761e98d489085cc26ed89c04be4
Date: Tue, 30 Aug 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661868653
