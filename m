Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DC0180
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A41C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695116108;
	bh=du2tPfw4LsxOcFzhzLzk+gnpcdUH4cwk1L9/PqeDYQY=;
	h=To:Subject:From:Date:From;
	b=kaRbGWDlTR+QG0oy7bKh4QO/VNjfcIk+kM7k5fqVDtBOhQO3z56MWp3aZnETVSz62
	 V/1NBlhsWWjYz2Rl8bIJrbEjL5lwpg0JJlzVng6DK2YiQmrnzsBXDpbw/Cv/viF8Nv
	 T16VtZr4YfabvH0iEd4byAnYjo2JvRDzNqulv6CbWNl9v6QKv4zcXgbI5V9pQ/9bqn
	 MJF458TQ5mQdICq+CzLM+JobNIm0v8cdvflKc5c+yHQsJhCnli++XwGWFKd7pAGPRS
	 Sl+qN14mALiim9ZjLr5cliDmHtMU0p0HShQ+xIEvKVbM/+pTtSLIPN7OAyaRFlO+AN
	 d5nMDzf42Ss9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD839CD54A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511610870.24360.10170000426610164970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03b8e4be2545065ff5691ab90ccee22c88529507b0540772efdaa5b17c87c5f
Date: Tue, 19 Sep 2023 09:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695116108
