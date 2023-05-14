Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D4C1841
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6DAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684024686;
	bh=oQTnI07Xy+JkVt/3frjTwLiWbjtzD4+qhTvzRLoBRcs=;
	h=To:Subject:From:Date:From;
	b=Djz6Fb520MqgNX+NJNEZVaTpR3NTzC4puYw6N17XHakYIaupZfT+nsZ8koRw29nrU
	 GL6x08n/ybB6f7VAysXPNQq1dAzxx67niNCssp8dYyxo+t9JeeRRBOhDyoJ4QJ5W8p
	 9ICivflKbmmx5PRqwrWORJkXJqpf/qB+qyi0d6ykdaQyUu+Iz10tGb3W2PVttBqNzf
	 dIWPpY4Ml/LyES86LXjT2CxuNwjMAB3i1MSmb8NgQ2dA18NFurQUDFgUF4sNPLc0A+
	 ap+0zCvc0ggg+GSxYiPb8/3krsjTkz2RkhxTQ6pCSB5+GkLEugvA0eOqCwzP+pa1JS
	 8T0goGokMPI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C847DC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402468578.26586.7613285478838603850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12141702fb39abea9efe6809f6331a7c2ce6f5069511785741acfa0ccba71c0
Date: Sun, 14 May 2023 00:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684024685
