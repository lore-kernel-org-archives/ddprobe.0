Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB87470
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9445C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680716225;
	bh=m3mUCY0/wcDP9L8MwbH1z5zZw6vV/CQdxeUvSNLyomY=;
	h=To:Subject:From:Date:From;
	b=tSyQEi4/JoKynL3XBH5JXVYCMBIMPDr4I/xTiaTqdmEBv5saF9Sy+h+RWYsdvqPD7
	 tiChyCp5jjVV6AVAgpaBxFHaHnTY0HXW5iJcPdoUYlaJZ1cogIadvgJ+hNt2NA43u8
	 cCT45n4hMj6bpu2adE1msQN1RqyKxTzhkJm9d3pm94uB6BpzehN8qLyC30cCOcS7Mc
	 LfzYQ5fvzixjwtf4W+33MDmGUS0J6a9IHslvezIp78b7UWW4zdA9FLtn/FH4SVU/u3
	 sqIfSakgAyRsgdNZ3HIIWwWXBD78orYPa30KH5T9ZpSJD/yWrHg7sXTb/ciJ3+Cda1
	 LWi+MSrdE+pcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9E2C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071622576.21392.13951843739356135506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0236c22129da050305a8cd4fd8b1b49774545cac545f66134c01139c6c75d6d
Date: Wed, 05 Apr 2023 17:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680716225
