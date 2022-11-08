Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D151A23A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3EEC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667871654;
	bh=43HVpzycYEW5x946DdpCyTzGIhsfdzkGVTAVc2soZ3U=;
	h=To:Subject:From:Date:From;
	b=B3BMp/WVwOgSiFZncD+UvItTghVeo9ph9x8nc4nT6XzzclblUmJ/c0/dX/b+JB7Cb
	 kP+FdWecpqZYvZlQ02zHUNZmf22R7s/hHmqujaTKPpoYYXl7ecG71s3OTl3JKcqv3y
	 lzZ2Vraaj7AvrPIkJgJbxGS1dOUvCCR4YWW0WMAW7B42aASVw8YoZknRzBgRTEronU
	 Aiq98B4ZPAAWdYaLM1uXJyTyyaU5LR7yBNAeba6f5js1rjezpBf/iJ2WmQZVWlZv/I
	 AIwSIX4kzyw8k0V7Z8XFtK+0uOVzIeH3ax6mty3tSW8AjS9yKVMbNW01iLincoi3rg
	 +a9iWNGrjLjpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E78C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787165433.323.6940378569467592728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143a0d3de4edf995eee5e864ae286345ef00ee52ba89d9ac3bcf3a28951b5943
Date: Tue, 08 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667871654
