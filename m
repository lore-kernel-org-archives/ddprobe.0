Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6E817D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95C65C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673416887;
	bh=XDm6wP9HRGFR8TZB/1gO3/XDEVF09HSiuuUKqM6NKbU=;
	h=To:Subject:From:Date:From;
	b=mysk1JjrDjokBP0DSLvwYHnA1tMYS3rW8miSPX1GmZpKqtTixoWXMIHXB9XVibEpz
	 qYkjxBRKvzHzUcU9elH8J5n1g0Ru5IYZ++a81PXWk+tbv+lsFGYVSa98ljxnvq2ebR
	 v2//Opj+AQXiwW26nT7KJj82XqgusYZ5BDArXrcwXgSLlnuyzS3qdH3lp4IKmQB4/h
	 ScYdV0K9luoTOrnxsCXQOLcpQ64fJjm7afgw+RIzTFGO+NbEXIfDxQgw1dATqhFRCV
	 RujecDJ6GNZHYnZqBZO1RhntjdPpZLSF0Y/UcQRWf54UC5326xCfMH8tznp4qVUd/j
	 wTAxAqXHQNtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 721B6C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341688745.8482.18355183274827148080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f33053f6bd21e099a10c8aaae9b2901381a6226b99ea3e0811357ab24f7dfa6
Date: Wed, 11 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673416887
