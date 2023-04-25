Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808AB7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2236BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682426706;
	bh=8mYXyCS0hFaNXDAygJLHMYVQ01hcu48+Y0+Ec9bw5YU=;
	h=To:Subject:From:Date:From;
	b=kSoDixcuwEQAXa5M1iJ0CU5dZibUON3mJ6Ngke8oE2nW3ecqKygFlaQ9LhILnsimd
	 /2SMnGxdI8X4rNfamiJdw2msMuNUliKLZVk4WxLk2Wjoqaz7110kmRaJ4T8JENNJZE
	 5tQtreHcHYVSUzTvu9JekfonIMlkszekuCMA2/Vbi36nGI8nArpYrpUIvFeZao7Hn1
	 WJWMoooMyIQHGlIYPckY7GrZqSO3M2df19cVTHOIVgFQGxhAhfYKQTuY6mmT80+eD+
	 Nyij6/BjvKBPooPe70DjLl/vX8j9JrRdP/shUxfNOXA3pRmte5oADhUskkAvDYFfGB
	 5Cfxr0ZSWP6ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF07BC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168242670595.17199.10223755984921026050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e74388764beb375031562d6f1b5e0a59af4601d43d93558444df4aa71ce760
Date: Tue, 25 Apr 2023 12:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682426705
