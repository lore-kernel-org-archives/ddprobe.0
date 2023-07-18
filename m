Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFD51772B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE783C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689712268;
	bh=U08ySt9bCX4XGA/cP4fWbqS56wR6d5ImawbsjNFkZUM=;
	h=To:Subject:From:Date:From;
	b=gcUVtGDMvRjGc4qrttpq/db7IaenTifEJL0xVeBMBitwNMIFGr0zfYh5Pp3NhdEp6
	 4YC4bxP7Y9VP547EpiicI6it/6OwfpbXcwoh5IvUdOvb1UxmRGQZevi6TFcE75Op1X
	 24l6dKYiWCRTN+7VW+cK/C5X9g5Sjbcb/WMpoGEhIZzd/7T5i+LxYWoImfQoK7VBg3
	 E7PvydI3OwOyCyYvx6JnwekYZpk0t01ITEDSifMOLyjcrMNr3axG6xlrMqZkfaJd04
	 /nUNssotgcEWDd6hTRx8oNLzSHILmEeIZzY3OwaJRo5cnlHMA5GzTkWnwjQpnEk1gG
	 s6CEiNoC6MUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9ECEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168971226869.20010.7111911955707031880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396852a459f98b5aab9fd9c13ada68e227b7806172c8a1ff6980ac102e6895a6
Date: Tue, 18 Jul 2023 20:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689712268
