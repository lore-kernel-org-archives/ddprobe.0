Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C297F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53F5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688776628;
	bh=OizgAFS62gyGkjjlQSAAnF8uLLe1pr5yBG50L+av3mw=;
	h=To:Subject:From:Date:From;
	b=NY915WUHSbBF/aY4E3Dj9BvTUHNubcbmpJqewCWp7L+vZOn0pIl8/+G+I0ZzrFHP5
	 YvWijXGtSQsN4RhMRH2Yju7kojTgq8yRmH8tIZAqKYHt9llwzizcnivdwRuRuIcIBm
	 3osgNAUUGMc46TUuWQ9HgprAZwObXQwpADBkxYGOlISrGrWCdfp1YcaeLQw8hucEA8
	 CIcjLREwF6GlzoOt3k6fpqkaj9afUv4ZPU6eQvhfNow3rXy96sW55QlrbDkNWpMMFn
	 Ebou58I5/kyXUp6sp1ahhTt0e+YyOEPV5MM1g6hPUT+6KolIHVO9vUcLaYOW+NPgIU
	 KCnMJWziayn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2E7EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877662872.25978.12698149933360509847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695a684003440f006ef8c73bf90fbf0f6e3fa4c24cfb460e720c4f60c3ee0930
Date: Sat, 08 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688776628
