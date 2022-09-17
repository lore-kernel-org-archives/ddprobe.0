Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAB87C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D48DC433B5
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663374053;
	bh=V0zvsSw58g8kmy8cm1wWaeEjK+R+b1SqniHnpXpzXSA=;
	h=To:Subject:From:Date:From;
	b=ICEtVmlE53Il8wmL47wFjvlvwedRXdpsJDkhwFhYeZflmLtdRR6vfgYWbUXCYZVDa
	 ECUJPnnnkyMLzGyDIFFQ7BZpDyyGY6SMwSC/Skbwds2rH41zKBHjTnDMLenHzu4k+5
	 38w3hylCFSit+Lcrmzv7f0OLowWYTmRXoKT+BD75ePS+UsKMGoglMcV9wecbrjdtQP
	 QaD5/jlLiJL0p6qkdtyBeydvRkU4bOE7/E/2dBIP6+oyYeqapE38JsiUQfEBMIIb4Z
	 uJo7sRRSVHIZJ0Y10cOu/4lnnnD/4MvLUPcKbftwOM4JESncJ7ssafSHwNm+JH12b/
	 PXIdVmvuYD4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CDDECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337405333.8168.9201349354264757834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bc5b2c09d0ea29bc8db8107a4ffcc763f0f5fc220a09ae1f302e1d6973bcba
Date: Sat, 17 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663374053
