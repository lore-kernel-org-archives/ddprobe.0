Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC217A4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E0DDC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672851087;
	bh=weihQWvxDTpEr5uxJ1bgV88I/AIIp1wFexOTMZd7aW0=;
	h=To:Subject:From:Date:From;
	b=Uc1JyXvl0nY3TJIT+4HRQcV6ktTv9jbTj38UMrZRQBfDztl5elyxBudRU+lRSLWHJ
	 JQlLcYnKQFNkQIrJbykHyyILviOYTswHto3eRDxvvdqDNOi0jZYjcI9q0yZeuDTQUA
	 ERzGjQXCXcmx/icgpGREzSOTe+Q+gkmcK5lLxZyMNZyMfscBVyc36aED49q+rDz8kZ
	 UrQ4NLG+hJO86ueoHJcd09slH0bVVXVOlwDH3gOjnqXsOXptoNfgt3HfRGMpzgGnWw
	 HeQfax1SuzKFZHspnOaG1b9xn+gnBfawP+JiuINNCx5KJa9TrE9HKwtrGnuFLcEYJN
	 H8B8Kieb8u1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7319FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285108745.3726.9003355533446615524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b63a5ce97ab46878785e98c050df7186dcb3265f0d63729185095ca5775e134
Date: Wed, 04 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672851087
