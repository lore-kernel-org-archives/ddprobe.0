Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7C520E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 949FBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673604687;
	bh=wSxRkT9lSkkR9JAsUALOwaGrcmWg8hoK2pC9FvUM1lM=;
	h=To:Subject:From:Date:From;
	b=bRxqO+X+8VKZ65HeAGjq0UXmGWB1qI0rkK7rPhEUyxC1DoLZPGHAnqClaM/thYpxz
	 Z4uqJRIkOhUEz0H2siUKBoLCF7a6cYDNz/MQ+DSDSxUiyB7vIRPoaB0YkHElcfBgw2
	 M3gUWUxxCCAcXDyPep8czI96lYbe9gpAhYFB5i9LRkvshy3DN3jc/5Gnb677pdXo6T
	 Rtb6QWDQ2rHzeDRVHPk+Cqi36cgm/V7PzMtR9Nrqbo0vkfpVSll5tDnEd+kxRibtDP
	 3PhmVoGYsxxDJf7yju1xhZCIR55Dp1NpR6qJ1ONHP4RzPwMQ4aGJwwdEdyFJ3NlQpx
	 8IsdvrURiMk3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BBD1C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360468749.14266.3040544466181153293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2465932fefcf4ac6f870418807d9197546c72452fb890655edb9e7314d477c65
Date: Fri, 13 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673604687
