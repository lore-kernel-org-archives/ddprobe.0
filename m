Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44B54C87
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE9CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665174053;
	bh=bvbDpMV48ivfqtYpUAmqeJtNe/ofQnlJzGg3bAzPQSU=;
	h=To:Subject:From:Date:From;
	b=k1VzvRMmjC4ZVXzIy9HlhIkwpRg7/anDkrFEGHVKA1uiMlfqH0Rvae/vzj9KFs/iu
	 YFatnLcZkrWiIbDQ4xIVu0In5Z1bppkAAcoYvwzC+XUPjJw0ARZHx0dXBhahrJrK9I
	 o2MpxUbdwNJ35KrdbgteCk1d8vATui9Nw7jfpDNS3EcXPiv4OYvQ/DhHEghY0zyKTs
	 p5SwBFhbmn1kgoy6hbtP7Q4h4Z45WFu1/VrUPhG2SrUuAjta67tdSaBT4Dgw6aFyRy
	 GhfGrjAKXQb5zGcyt/o77aEPXsh62KUjmr2ZyqqlAdKO7KRAtC0D2ohw5NSoj92Rie
	 x1t57ICZeZ+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50691C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517405332.6765.6645162445346636391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8803b880ec89784c80fa9572a857912465e06bc309b062827432c8bb9cfe25b1
Date: Fri, 07 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665174053
