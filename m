Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D0613D
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DC5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693219448;
	bh=GU1aSw1wimZ5EwW5GxMVmlRZ/w8ntkBwXzPbZtpun5c=;
	h=To:Subject:From:Date:From;
	b=MdmPkmHUpD/7Q3L16SvmhyJ6Zhmw9uQqG+w9r4Iss81VP6o54zI8RfC0Hy93jsK9m
	 O2eh+VvR8U+UWMXsWaG80yNXbrXHHMEm9Xwn2MrOYuYSyjG2qzFikQ+RPbHwRB/cme
	 QOIA4/sX3duSnuxXVX1YIurMLcYAz/2B7BnyLo18zfZZOxUcF1rn/ZSZ7FuvVpxdhw
	 viYRxub0ssCdvOSzIGfHWk54lV+Gjw9mp/uV2MBlBEKfvmdtOPDfUdKh4HPuaXwUvF
	 n5moAoPG4ZWyCxe1SsmrPWT431W9AEf1VwFvHHP4HaiyaDvUBwiuKpW2K4JCpMgl9r
	 wBJm4dbw+ZvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE483C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169321944870.22022.12099674442354743991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ea00680dcae319749dfa1d84d58756358d6051f28584d6fc90d89dddd7f24c
Date: Mon, 28 Aug 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693219448
