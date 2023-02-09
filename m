Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F1370
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED34BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675954326;
	bh=3EM+PYr/DtWMByFu1/rFoAVNKszZRIAxQk+95ZUafpg=;
	h=To:Subject:From:Date:From;
	b=NdCeAHFxXn5lmpVFfjyMczaFTnmM0MKVK76L2mMhTBXS8RfYacLb6BRGXph0GWcLG
	 jQ2+BBjbPmQX6RvnsFzHM2o4ztSPVPYxwmKFWcjBnmdKp1lJLhXnDMHhKDuo3sqnGV
	 1twgMcq6swqezCn5M+iecBjCUqF1mHpnAXOggi1TnGCC7rfwLRo1osrW91XaqEaMda
	 It71asfWs0wfV5rlqcdDgpspWirlD5yOYXj9XMcTqBG9NVGt1DC9OjnnuICHMBBSVW
	 /QtPOUgQ6bgW/m+/d5af8QRp2lXWBq4IqZfv+AmtE2ZU7/3gJSlfFsxOZUUHCRbES/
	 1ZzYGNpR3s1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF525C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167595432583.1303.10014857255687042113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771c21549c23d2a914145f08195bf58f41be52692bffa159c1cfa968e853677e
Date: Thu, 09 Feb 2023 14:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675954325
