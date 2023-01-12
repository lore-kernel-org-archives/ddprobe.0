Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A98361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9745EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673486487;
	bh=UW6oj/Lf9trtBLD6+h4k52VCa54sHI28vTpbSJLu0/c=;
	h=To:Subject:From:Date:From;
	b=IpvWwYC5OPMI4ckzOEDuzp8U4ItZK9mLsUlQbsHu5bQ7gqnv2QhgpOFNf8HBWutnr
	 R0va8+wlHsOFsgC+iu/gcpdoQjOUfojuWph41p8rh3Pwwv8YyS9aOUfIHK6/aWhycc
	 pS9CCIR70uxj7weag2qJXJbiQSccyCKk6mKZmUJS6oe/YEJMiGVdKVFa0NArJpSq/x
	 IejhOHMf61MyUm40Mvj3BloIbFgXn19tah990mnicxBZByA7LOdliTXzz2HI/q0ebs
	 sEKqI/oryCyLDPgtYtY/Va4xMOBopAulv9Onhmx6sQBv4dpSoFAGF8C748pEALbn/h
	 SX0D+Zvht5aZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76291C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348648744.20536.2605617834589217472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e7982513f0df9720f5064c75ee0a030dc1bb9d366bcb8b025c65cad6dd1afb
Date: Thu, 12 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673486487
