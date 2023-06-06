Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5ACFBED
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF199C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686086526;
	bh=+dQrQvzFY/+GYvFYRvn3DgD60d+nwte3iWkM269CXnE=;
	h=To:Subject:From:Date:From;
	b=iQsuCOYOR7r84i2Z1ILgna6XkTAD+/hn/glb5gYoILgU7d8PoT5T8qVAni2x5q1fo
	 rq5VArsE+szCu2JeiS7Vh6YWrFjWYyo5CnkT+XEjydKpal8qw6T+NA9zYSmdVrP/B1
	 MwMr/jG0hK4V9lFo4JzBdxf99wEyxcWSmjh4orNwuGyYlRk02cZHLRM0+duxV4THV5
	 atfcf15hCMDKRl61iqZ+o1GXx9jF8lGnw17BRl4KMlfC+e7nSYPuqrVVAs0EQU3OWA
	 0V0HShXC5PL5nmOP6B81rt5/lGINRDYDgWdGAJ4Uh2u2MdBVN1BoPSCYsvsD2ZfMTZ
	 hOv7bsi5BMpJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE567C7EE37
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608652580.5223.5150989088711570594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f72e8e40f29dd7c92bbc94babedc8011f2367243d3a95ad621276db4a9c3dc
Date: Tue, 06 Jun 2023 21:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686086525
