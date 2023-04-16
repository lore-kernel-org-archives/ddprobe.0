Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F24186A
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 084F0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681637766;
	bh=OSW/bR2wd2X9VJDGue1EHrTTURQkP4SpYYiFWP/cHIY=;
	h=To:Subject:From:Date:From;
	b=liokWAexd3VYODe+ro0CVJtfKSZHgUwX6rrod6gfLi+TVoM8T5w4qC5EmEXCmGxLF
	 rfsEJGIYXbm5Q39ty839zPNCSZwwi3rrS6mLkNe0U2xqm9jXCLPSMzcwLIARFO5ZXn
	 HrOgVsnToATl3ZfrXwiXNeSR9/x4oDwUeZ7V9Nh+DvuIl/BfUk8/xX5Z571hcMemIY
	 TIuVDtgOn3Zpm0jIjutA+3nxH22vhsISph+NqFvl1T802sDOd1jjluuwgJHCxz34oY
	 7lEMhZEaLOIAptW7wzi2SQ27Tfje9b6qjeaaj8RUkyZ8utpRalTT9Nz6/qFgqokLIi
	 sb+gO6JRe6YPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB999C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163776579.1974.1733251176167005332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4ddb83862f2a624c552fc494f1529afc57d428d5c27106b1bd56eaf8add64e
Date: Sun, 16 Apr 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681637765
