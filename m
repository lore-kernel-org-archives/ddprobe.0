Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1CACA6C
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 09:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2249C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 09:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695459908;
	bh=2PYg4Iu86cJG6bscLPnwIXvO0uyktiT3/2kxJGzVsfY=;
	h=To:Subject:From:Date:From;
	b=bkKzoSlSEu2afEdQcD7L804rCE6XGfsTMWUQUQob0HFYZkXKUs59SafV24haSjxjg
	 c10/Dcum1Hg2CFja05vXGWynTPZBLrsJLBFp65ozqt/aCKrn7jxoeREXS03KKlqxD7
	 9FVJZTbxikP6Rn6WBNYx7JS68OwyRGtOce1dCIaRp/J2COXxr4AxC/4iedj3TUl+HQ
	 czpBRrPlzq9O4KGSo34eQ/creqxxwIwRtiLX0Btsrz3M6ez7cYlxZj/+p6OO0wRrM7
	 S1mQLCrcZGN1PjpONgYVUC4vGEj/jFxnF/yxIncfpaZUiLJ2SH5dgTkH8/NopdVqUx
	 azq6cevGfb+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23D9CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 09:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169545990871.8204.13596700840922404511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60017a670037861f0e49c332f58beeac1ab4938d2fa585b142d1193f94bd0488
Date: Sat, 23 Sep 2023 09:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695459908
