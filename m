Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4429823D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75DDC433A1
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682596265;
	bh=d4PVNVNbgg53WX2YAQ4KffZ7/xvwKFIEkHCKLqSaYw4=;
	h=To:Subject:From:Date:From;
	b=h/cBqg47dqmNIew2bYu5PlHE3hryk/DKLc+yLdObZIZ1gdPSm77e02HAr5Iy4t+9O
	 ksDqZnC83DABZThnCPlIWtwvAGIpcGlIUu+vz+wubx28yAvmkgFEAUzlSOjZW6l3MD
	 tKqKB3ca+GI1rRTMm4iUGggAqrvZN6BNDQB0Pn+A81UYI7EMNgygIqq7r1gIn+tmwY
	 0Wfk1f9Ab+1LFGut5ERyCJu1SFJx9uFkgkh/l4vcGtUKgGqggS0OEbC+u3baY4Lr85
	 jzbbz0L8w+f5Nizm3mxT5K2/wKm7Cz914J/FYhrp2NoHf+bsZGi2VBHN12Hg/bY59+
	 MK39MlmcgsTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAD5C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 11:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168259626582.14261.15436104367070622772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a358f3afc53e60c5e5a44d14486b67b42b4ecb6c6f59751509a6a1330fd54c
Date: Thu, 27 Apr 2023 11:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682596265
