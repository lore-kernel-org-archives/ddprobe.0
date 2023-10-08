Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAD010E6
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBYADbG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC0DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696729628;
	bh=F0QND1DzSmEAG+L2tT1Y/8gPlJITAavTqiJFhi8I4cQ=;
	h=To:Subject:From:Date:From;
	b=KBYADbG6HuB2TPdmICgtZ9EPW8QKEn5A8SpZf2/s40mAx7Yn/3i3sFInebVuCS/Jm
	 UonKrozoQV+34ASfWFfpw2lZKJgBYpV6HsHTn44skMElw17W0oTklOvmPyxQsGb5dI
	 69UTGQcHVQps6SNv8BHWAGereLNWw7vvG4J9xPVlEZu6zdJ2exrHFTw+zL9jQtGDBR
	 PIiMBwrK5dp7kWFoOJeQRTrMnmQwgbW804B8UXjCd8dYz8+FaiFwN/msiA4uhyJRdS
	 ++FDbfyRnlxD7Ky4tTZ5SFkJ1fgz9P/ioeTrp7kxxSL5xenRTk6gezNnMKXLjc40Gl
	 rBBEIDMHOZcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CDE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672962870.9400.1976162945987717114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc098498330acf96517cec66e70b044e7201f9037b3cb1b76f3e36b6c283c80
Date: Sun, 08 Oct 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696729628
