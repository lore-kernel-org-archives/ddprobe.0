Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44472383
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA019C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683592205;
	bh=rbdHs8adIuZsgN65AFZvWlyXttvR2WpEXR9JYq+OffY=;
	h=To:Subject:From:Date:From;
	b=MyPZNWXPPM2Ta/g8bRhC7qbeFkhNaKvLybRWarq0i+asKA5gQequsemxWEEGAJHiw
	 BKi6ZpWLjiyHumE9lKnG+1qYKoidUyTIQ9JNymIAAyVL+ZJjqM34Qr8AbSdHVm4oE7
	 m/eduJ0XDsX+sLz9r4gkkWt6SzrKJpxkYwOv8235xtgCEjmSYFNgJM0f9ochdJ5k6g
	 NwVor/Lt7j/93rROBPhKOMSat26Ola3Mb6tRXZaEmQXdx1tp6Pbm9fPfeXd7R9m/JX
	 xYVv7QGgmSscX/a4eYzAuLMFXgV+dvhfl3qpyjj+Wq2Ni9ABSE+VIwaqTmSbIyGkvp
	 HRga+0LVGzfqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7F8C7EE25
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168359220582.30320.7862953841703110549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd26f9499f050e379b46b9cd80f29577c80b6cb7bab0dde900840e74c4a9aed
Date: Tue, 09 May 2023 00:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683592205
