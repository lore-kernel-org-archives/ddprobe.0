Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C6017E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50D2C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688291048;
	bh=QALprKPhOTN58ditQpnzg7tSpZSaPhAgr5ybU4G+UBU=;
	h=To:Subject:From:Date:From;
	b=XlsW7wzsmi7ve8Zmu2ix5KArS6h4+FJVbSC2m0Ly9NVo6lIeAIlktvKmOG9pgCq0j
	 ugTyIABjChkckvfhr7bcrNjIvISbtje6NQ+nxI58w1cZZ5NaTV8kKbEdDubqM1dkqG
	 W6ach4XcXjWMfReX1TJaSHAveXrS4y4uTXMgJCcv8n4JV+vs/zsn5OzHY98snB33tW
	 aqU7nashW33bbrxh2SkpK0azVHLoyvJwWCYNpKECrH31k6hZYAm5H2EZrS3lITuZ7S
	 C8aDW/RMZSvZ35OY+UVZNAn80I9ULLBX+1OJmv8SOWkehGJ/45wIp/gLbPPl3TUI+T
	 oTqBvCyrTeGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C70EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829104869.15634.2305765411446376164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd27f338a4855c8e0d94eefaada2d90cd0e0cac5a38726f3a0aeccbda113ef4
Date: Sun, 02 Jul 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688291048
