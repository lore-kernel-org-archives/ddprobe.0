Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B2F7E0
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 20:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0634AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 20:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685046906;
	bh=rDCt7TQiJwdY4rXyWet3S6YucL1HfocZHsm46VN7rSg=;
	h=To:Subject:From:Date:From;
	b=oighAjpYXIooW4kzeJJcthzabBqGbFyHRkTMkAteVZYmWm0rgKc+yUIXFYEOROCoY
	 lM8NrKwVHkO8xbINaNlob5esT8r99T30e0vCWEKOiRsohhbBAPFx4P0TCA+2o2hKqk
	 KEhBQDjdFA77+isFFmsdBUwwNT/hXIilhbtttpuZTjE6XHMywAbomfBtQSeZ9cArwd
	 lvngQvaF83B4YSnnEiVyK4Hsr0w67FWQeN8TJp6iyV8Djk/OQZ71vm7AXR9PYVjZjm
	 IbI+/cmpllx1kF6b6eVAbRpt7EIiMHJSXdtoVqRuHXhm266a56n2J7bvVsr/8B7SnH
	 m8ux41ICbBGYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6DFFC77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 20:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168504690586.23135.9541459553839708884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93ae255c849eb081e7c0a183ea8199af02edd89455fe4df0d6d46b9fba7ffbf
Date: Thu, 25 May 2023 20:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685046905
