Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA62B63D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F80CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670574687;
	bh=cnVIsD9InffefMynda2OS4D7Mafjj5sJqevngOsGZZ8=;
	h=To:Subject:From:Date:From;
	b=uGuh8lilc8qiGGg3+r92HfUwAHEvc45NVf6PvtQe4V2PPMCwqsuPWDi5791OAiZic
	 5oeaGv8cK41ebhZ2qEHwaAus2QZXSou7j6NqaLSSdqvlHbb4atdNpmzqSufL6AJxew
	 gBYShJxZHXm7T1DzY/gRjS0wUzhMwYWjfD6BJqmKn0EqVCeKq52qmefsymlKPcUrVt
	 m9u08DL5Hc5tYhZ+RYkh8A9NFH9xyprbjJYvFx4MksPiNAO0zO/6sLApoWTSHqhYiB
	 OnZLkItzucNNVDdhatxEFh7bzQE9flKeZUTaSmAti0yRL750mWH/jUxUDUON62hVbk
	 7zsw6NH3pXGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62416C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057468739.6594.5824416698309839133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d954bc849ff8d7523746723d9136f7d0fcb57f2a56134cdbfb5720088492ef4e
Date: Fri, 09 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670574687
