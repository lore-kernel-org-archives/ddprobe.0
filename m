Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A2417EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99736C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673430687;
	bh=VWMbcyVpezc3IYAPiI5qei5Ymndov6CWERJ9RlYt9ZI=;
	h=To:Subject:From:Date:From;
	b=irUfkUfEo9j1cLFDw0swnH0XU+OhIHPwSIoMSgCW1bPpIXdwmPP/6e0BRiF0sYe6d
	 XXE51PqyHNpLZ6KDnfntp0rdRASfJimmzGCwGFuuehKyFa8e6Pf8ITIJlIiWq+DFxA
	 ybfdu34b624WieOaaRDUNOyvoDoY1XRueXjKpfmK5Fwk03kA2wLvJJkB9Tv5w75gHI
	 qR0GGAUrk1NI/KhiqfRGpMXmfLeRMwH7nQRZSaZZszER899EgjXcKhLHdED9XGHBxi
	 st4AQBCGqqufltn9Pv6SUNTQ5CQFWSg1XRK1ZRH+dwR1RL7qgdVERqHZCFbotFVbz1
	 O8YqmwUsJrUXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75BF1C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343068745.18846.13312541194777453684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bd02fa2e8459e480a54b27099f60635a165faf8a9c7928103d5b48a41dea89
Date: Wed, 11 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673430687
