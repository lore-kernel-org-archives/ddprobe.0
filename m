Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C3C2F5B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D95AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665774053;
	bh=e9ShR2TKfGxbZX+kD4nNsRi0M4J44BbrTCIEtlU/gx8=;
	h=To:Subject:From:Date:From;
	b=J9YQU0/B5D4rzusjOAwJhpdM4fJ9jD8cFL0GW8tGzmOZ/6gWTQHcxfmbW+x5Gq4eO
	 gOEAhTvWtL2byOFe7uYqRAf8L3nn+owsiMmsEVfLcOJA9uZ3ymu9cwP7C9RnZ2nDlj
	 JoiGz4NW0UZTeASjDM0KIy5DOXWAx1zlr0wiWkau/fqbwfMnOG+151e3kNoi6NeJ4r
	 IFNBMAhnCZ/t8p66DU3Wqg0I8u+KTAXA/rWAQaprcj4FfOcdXHzM4qAjFJybp3NI9w
	 qQNhDDhJlf5iJQpOj10iQxVA9ysgUTocVITiL5fEQJqUrbs+U3WchK3DqWWnMdyZ+o
	 MWtZKgXYUdYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59623C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577405335.3676.12368947219769622565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd6c15a44954bfe4f83c5045a401b1bf0654d961c039b48d2facb2886104540
Date: Fri, 14 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665774053
