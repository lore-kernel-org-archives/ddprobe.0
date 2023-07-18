Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7712515A6
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0426C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689644468;
	bh=y0QFsX4QHULOLx6v3tPd4+SdzP0fzxilBwDAZkN/k00=;
	h=To:Subject:From:Date:From;
	b=a+4mEbH6WQ+wvAz9gd/lun2uVZMp5QN1idTwz6DECUWkrtT63H53w98YjJ+nEWx1S
	 9GfVLUZji2YyRb+NgcUkro2UFVKVssEy08tN01qvYfLH6wwN0wBdpYTCE0NeS5F64q
	 wh+hr0Pfb5aXhNarStGsPp9zBrNZIIWMd7CN2Ky12dtMYFACVd7tbXiq1H8hSX8dXb
	 vtna0CVCS8uYBczNp3Dy2LvsqdcsD7bH+AhtNs6CX6T0mBcQvHNgoo/Q1RvxBP/ixs
	 rhc0lffdw3FWsFcrk+9eHiTUNnrtoejBUM+5MIjuGacvfgmFwuRQ2jdEZlaoUAge9m
	 a+ZKZ/hkUSOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2506EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168964446871.14745.9996934699751438076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01bc6e4fc17f9df4b8a1679b9b4a7a400fff3df558b5e5143ac5b4e3d0285b6
Date: Tue, 18 Jul 2023 01:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689644468
