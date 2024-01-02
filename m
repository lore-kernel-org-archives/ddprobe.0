Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3494168A8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR9eAk42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CD9C433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704230896;
	bh=ymvsts02Nu8QKjFIvqLIp0v7bDPpKRkN1BAeFU61S+U=;
	h=To:Subject:From:Date:From;
	b=TR9eAk42tSNretfiniPgr+ihjJCup3kbUDHnBVkEgOHhcXMAEOFJRCyzql+6+89zY
	 964C+2yVrzCxJfy1+5VHvDbFmR1XrNM/qu7K0BC1ZOeZBdwrLjZ1uCCrlWbHrG4q/6
	 SlZtxyQqsNkEFiQ6MYCnElcCDVYVM3XQvMFnzN543CSn5/FwBOSJ6xxXlOCYukf/ul
	 9gK7VbWC2WRsNyfmQFfxmXCkHGEzWEAX/omFQc3cVypYddZ1+lBEWOOxEmM8Yhozl+
	 QWTubnmDtg7948n/600Udx3X9dqTlpSOxAMSHwh0fkR53TKmk7xoNBJFNChdv6aROt
	 Rk01tXosdjQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AD8C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170423089640.25244.8275965493508272251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2aad33cde8ba44a19b458ee8290c7953f64c09afe07199652301a96f37895f
Date: Tue, 02 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704230896
