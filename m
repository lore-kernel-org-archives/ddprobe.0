Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B037C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838A2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673681487;
	bh=K29wfya4ONGYtB2HL9EwZGw48UOidyZz1PSH6TZjmUk=;
	h=To:Subject:From:Date:From;
	b=JOpqJNo3KqQirezVcPRCSz0DKbgtNBjEHD0SPkBvb2sDtQYRkfAbVgpM97k/yLeZZ
	 xOWn93USdLHCmZ7GnZ/in9UAzcUlD14e8DPgVh/me2wzSHe+XvibYQTqVgshcYwuno
	 lA6F1BzuxKVWS67naWAB3NCtq3JbiYoVR5rp8xDK/13EiH7Zd7bTS2fgDsoM7IxuEk
	 GwxYPEYeHoFF6uFvNw3E/1f3klqFtuI0b/hlX9axiT8LO1WHDxO1K4QIfIJZWDmg8B
	 b7KcaICVHUx5tJtVEj4LbLa0UfIrwaJTvgoGhp5y8t5aCwPSH0UI8HWdPryZz2iEW9
	 vlDBPeS8Tuhhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6929BC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368148742.31549.14184777591416425628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debada7037a0acb2b58165660862fb819ff20ae31a648c6db2a717f930719025
Date: Sat, 14 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673681487
