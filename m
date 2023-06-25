Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876EE1103
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61DCC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687694588;
	bh=sPDWxESyQ3JAPUJtXx/FcYeblWwmrGzuFFcafi6hfkw=;
	h=To:Subject:From:Date:From;
	b=JZmEY7VD9TZjqOa0ZGAe+ENwrWc+jS1cGotyWM+m7Bs4/n60iPaEVz14/hjtIDTeg
	 6ePfPcZjPpzL/X1EvCzDmZ0IRzTtwhYac3tWwHRBmjYBxfcLjNLV0nZ/rR9CqWyuBm
	 2jGc0GKUuvefYAVFB6L0XXKp+6BvXnHowejxXAoVK5G6tYEmR6vKBT0ixQlUwrbiLG
	 baEBWI0maGffqvqjNrgsv9iLF31UNE9VPj03JslIgJiFIrl+EgNAGDCNj3wOISr7X2
	 UUOfWHKjPtMAUZCtqk6d5HQW1OyRwu9Ey0LSAu7eFa9Zt4n6vPTRQ+4a2fmuLS4Jro
	 xotyjaDi5pztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD69EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168769458875.22860.15374525969435867493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfc83167c35d27a3b08c98cac019fe66a72c8bb18577b9f5999603042f30b22
Date: Sun, 25 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687694588
