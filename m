Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CE733D8
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32D2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674510185;
	bh=jGqXWpmqzAL63mnKUlqg7S+1QeBJ5eL9sIfbqHJIji8=;
	h=To:Subject:From:Date:From;
	b=eKYuOMOhKMPt94GneHbIctuTREDQwVUbcmHH60CbguVUpQAoHsj0+WIysoD1dFLtw
	 ZXpZtw4zoQA+IApyXcD6OEL3HcyEbeNlFeFThxnBNMGpoMR6IrvQvHhEzZe9CC/Juv
	 qJgV3k9s/FPPnMw8Ji0/eVLZUHSACKTuOFwam+qQsx3lEWffM7r8vzthuCsdyTab3l
	 2kao4oYQc8djOYJXP1HEilG4nANmPZW4PXDWWeWlLL7loY4rjzLw9B5qZ9ViDQPLdC
	 QARKvthUsIXL/fr7OaV8CaMxVL3TYtoTJw4+ItuRmARrhf/PonVLMbEwieFm6jeJ6a
	 GV8ZSr1lA5V3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7169C25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167451018574.29511.17426708306696718786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a5a513ea62d2d814fe849ecf2a9646331e4926ec593eb81c898fc13526d7ad
Date: Mon, 23 Jan 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674510185
