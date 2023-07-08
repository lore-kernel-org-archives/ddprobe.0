Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAAA1380
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6A0C433C9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688793428;
	bh=mysbKUy0Ui4EZiNz5HAkxO93KTzG6krwuOR+rdTXjdM=;
	h=To:Subject:From:Date:From;
	b=dSv7ArxKmc27gxoeGkHZ7kVW8R+8YN1pvsyJQV893C9kKbHR0vwR2W2M+mKSVNASY
	 r+HAglweqFHO7VfmB5cDpU0o1VBtZljoykyQEFLP4/L8BFlCEpaKKsYbvR8CcCl0AJ
	 /UCZIr2UNxtK/wD9HoTghRYl+lMeN1HeG+vkIAXFr1nMPR9CCZy89aKwqz11uruuIf
	 b17wqxHPUstohjsKfiNvBd8BjEO+WQh1gcdVWMmsXmsTkskR8tBbF6FnTd+C56ZCgp
	 3tghL2ICLdG7rksP8J+oWhZf8xbO9xsAWEimKt6BZrO5Z2j6/yu2gtIEit1O1OPOOQ
	 O6SC7RcaP/M1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC54EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879342871.6934.8878711823583757388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68a9a50c67479102962331f546577944ba869afd83c4e754f86d3c4dd0438e7
Date: Sat, 08 Jul 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688793428
