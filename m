Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93546FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94608C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673366487;
	bh=jZUfZPG0Fp5rvsBCs0yWXOYt5MGDhBoOFbZ+Keor8FE=;
	h=To:Subject:From:Date:From;
	b=TzMID++cnl+zIk6dmt+OfYvWnDj7+SpYDh4ZB/JeJtXWCxVxdHnHF7G2sYaTPM8d/
	 YxIl1TFSwVtGBOdvAt9sZtmkwGtbUWSGuzWLpw6ss1gEo4pYxPPLnO6CNjb8OjY5iG
	 pNlK2ecuxoKrvkzkMUvzczdQIbWdGtPZIMkZw8CK/Qh94HnC3aD7nM0pHsKFUZNbkV
	 ZOBhVCZLF3M1Cm+Y++8NzYX+EkVKn4HiEUvDxmrUoJKRQM8VKL9kkPKFTSLkYC9dVq
	 2QFNqu9SVrIE0BiByrWt+BxpW/AkSGtqT+tcPaksK/K2E04qmM9lqyTQAeUGicckHU
	 j0pJkfI3KnhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 731DBC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336648745.18431.11152330124431440620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24304b7ce1413f76c16c09de32198300f0af70ecbf743539c51847ab44c9fe50
Date: Tue, 10 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673366487
