Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B0515AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFDDC4339B
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677982625;
	bh=6qsFrI+zXB/SfQrJsJc5JEFmunS5ccPNowSYcVV5U7Y=;
	h=To:Subject:From:Date:From;
	b=Zbb2RafsQGNHU8tQfym1MNeojF5VC7NIzNS+NcDgwPdYXSsbWQoGJC6XOLkNZZ0uN
	 KrhkUBrHTBRrxUlynVRUK4M9QKQbfOD0giMq3NPLxS991re3CAzbHvHKp91gsr0Jt2
	 5mIWQGxiYo81ym6kebLZ9la5JaMyrO0LkwYxKsVh5fwnl9+Fma++fQrn0nddNRwM8Z
	 9jEO17ivL0pdxc5atJL72bwHXBlzd6lGMUynPzLDecNJG3FLwSX1HrE7pJeUqnPFk/
	 WsXO8rH6eULI2VusPi36JOqWSo9VUczZXs8gwzcDhaRKnuXhv5w4qnPP2AjiP6gYsw
	 0ecIfOHV2YwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96CCC678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798262573.17097.13446498853606792016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec420723b5a6e5262e60f0f0feccb24bfabdcc9488605dac86436b5f79cc921
Date: Sun, 05 Mar 2023 02:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677982625
