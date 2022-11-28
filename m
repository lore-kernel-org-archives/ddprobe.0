Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69E77E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BFFC433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669596654;
	bh=PntXXRm2RJXtQty6xxHYSNrzqh+Uwz49n0UewepMeIU=;
	h=To:Subject:From:Date:From;
	b=VPYNQKeF19incPqVg5JnrfbPzPINmY3vjFRDWkFK5mFROPmLYG77pzT4g3HZS4ENq
	 UzwmYSglbEMEKyJP+1yPSYgQIJ7tiZhhz7VAt0kqt/9AkysfQzWJZ2wKAhsBVdXsKg
	 9FGj9uYpBYQdG03jsMi4D4rzMyr1ViQW5i6YNkDg8DOHm6CrrncUONIuFcZQD20IAK
	 rDd43Z09wBmLoM3G5Tdm2iEMm6X/7uFIpM4TS1gydl61B7E/FclX6QGK+MCip4Bz+C
	 IVxXGRsRtU7oXKTlEdVFG4syCYr72YkKYpaAfPy9C++muWw4BMNyCTRVgGB7GNQ6Lt
	 2vRlI5cDKFA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DEBC352A1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959665434.12184.3098663937317445752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e82757c4463d6e50d207569c1fb8d0d7ec41dd206e3090649bf03295cbd1b16
Date: Mon, 28 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669596654
