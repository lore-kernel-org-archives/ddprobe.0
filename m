Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D4F7F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE80C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663498253;
	bh=4kjZMCeEGkyQ/tLg1pZZQgkZhY4m3TfLIGKCaPKoWlM=;
	h=To:Subject:From:Date:From;
	b=Yl/kk3PXgHJRAufZPGcFQr++xx+waRmstxYgwkpvu5qKzydq0kW4LNHrUX9jaAvVc
	 MfDJoaR4bTxdMw10DdmBpYmtSOfPdzeAowO9WK2XSb8gKs1tfaqU4FuUGo6sbfv6vO
	 LvvlND8y5KyEwiNl2tChXwz1Q0bLEtzJ+cENyTnrHJBbXhd6RevRCzmhowPLPbPQ7x
	 8cvrCz67qNsrVdi0luBfp2nEyunJ6fO6aSiN9FnpPE4D02JnyH9sXeMsAya03Tz+Pb
	 MY8NG9Ri95CM9/w/fl9W7h0XQiBOO+8hfLZw/If7sYxDTuKCvT+MCUygs5U8VoeXGH
	 m8DnqvrRTg2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ADDC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349825332.27450.10950712253544682817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccafc30e23246309506724dbf5ceaf5b8e4061f1be25f9429dd1007c543fd79
Date: Sun, 18 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663498253
