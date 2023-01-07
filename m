Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0095F1C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9FEC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673104287;
	bh=NzBDhfHLSRuIr2qA7igF/fR6dHdZpQbkmOI528mdXM8=;
	h=To:Subject:From:Date:From;
	b=VL7UOmkLqHAHQP91wSmMwakiByYAZd7YwxMXP7Tler7mfktLYBQsFGsX8PFXt95X2
	 In2gbEg7ePhGDCAHNmIo8YGWeJHn8ThWn+jxg01xgQgiycMdY7em9nsJdwOpH9UyCh
	 QeGHNQoNeaJUQDTMakCObzzTX6cnNoG1Q4dGLHi/AMKBYxUdLRtS+AncHxAkbQ3/T8
	 6xVEkK4zCJMr/lEW/aHwn0YEYQMqG/nvhgUHdmPvf4L5HAuUPqozuiocNS8MkqGgc4
	 shfCMAPco36MwLGBFurAGDoXawjOvhLzpnh6E2j4NIkF6CHhTtDFb0WL8uF4U/qkC6
	 rNhjGL4N/EPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C38BC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310428741.18336.9442072753203484972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5fb8dda55ee548cd6cee17371ba71b0b61478669b5c8a80c1cce7ef016c710
Date: Sat, 07 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673104287
