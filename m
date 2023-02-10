Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303B1A21
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF155C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676016185;
	bh=4d7HpFqcKsm2HQk4LfuAiGpgxztbp4agHGu3zJyoHt0=;
	h=To:Subject:From:Date:From;
	b=Z1W9aBkOL5EzgMUTJM9jwQ5c3fBz3rzvE/JDOu9Ntsltbf4EDPKNb/OlQ76rPo5W/
	 cLP0fhQK4q1eTdb+Ph/8ooF3Rv5XGq1EZTRtKyWSTs/cU994ktkLIfubID4Re2K28G
	 iCrCpnY/9uMUG2Xmp0/WlqhuT1sLCRFCK4foM1aPf9c+eJA9a/e0zR3Hx3oCTtYYTk
	 LfKerREeEB0n9SLf/MgBUY0tKivfLfzzzX7ErgMHJaPzNYFRIAirh3lqukFfoAlp6H
	 DkvOqiDcOqdMgfrOM1vwb3J5xbcewJIyIb+YAWpdW+w0KUs1kxhLUKagPXin8BnotS
	 Lsr1FdvuIuM4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6E9C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167601618575.6538.5750480480894165333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058f0946ed2d6e532c9aa93a2081de620139daf23ed972a59bf89fdc7673d4f6
Date: Fri, 10 Feb 2023 08:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676016185
