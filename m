Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7ED9620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C285C433F0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672185087;
	bh=unySA3PXsg1slXIc7KL3SipB2BREZnwXGEnypk+ClGc=;
	h=To:Subject:From:Date:From;
	b=aiKNdF6epOIt/VYCTkGGpf6YfNV+RcelDNGaLZH0GFDKNN6wFZuMTZBAh2IcMgZNC
	 swsE9u9dNugH0SxUHiGmKWE3ZMnWDPWg3r4/ukHZu87vFVRrDc1ghQQnToegITmrFF
	 JRjyB2HlgFmAztdb8u+zsndnzBntHUn2xQuEuGGSHe2ZNOyoZgrc55InHbP0tMX4DK
	 3fny5L+x8HtEz7nBW9qySmWwIZ8WvdewFIwKOdUcs+7yf2ooeDpdk1wqhnAko7fjlD
	 h96AEfIb2J/icMGOHPQnD9Y6dKYpySHYo0NBpG42KaTdMVbKAYo0Ae2xALP9AFx/WG
	 gCkNSLl3COo1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCE9C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218508745.6871.16518754263391641386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaa28e6e3c1d7858b9bce7c27bb48b4c97cc64f72f80e3ed64f1ae03d1540b4
Date: Tue, 27 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672185087
