Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BDA2F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76042C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663356053;
	bh=dMQ5MN5XKNjinnb4rSf1EFqIpS+Q/tb2+eKjfYKYS64=;
	h=To:Subject:From:Date:From;
	b=EjfWv7WC7KNBtlBViFC4+OjhIVja+t9eRzA6Mdb0N22CDw1xqgvWdSl9pQx6GrzOP
	 AQt6bNOSBfbhDiRno0tWuS3HdhGsqhGnY8d5J4aBWq8DWCkr9Xq5FmtvMx3dnMWYx5
	 ggmDkOXmlrt4Kxx6hxxIpEIL/+XAD1HuuJk0CduKMn5igRvR1kuoDzG9KeY2pbM50T
	 w1sr5qjeHtPmeeFypBLI4yatCLiWosmTR9+2orwvOHqGcc6wprtHSoaTecr2qWvdM9
	 QQzGOCPuX7C029dyXDiVXP5kydcBsfwQWL8+iCPaxSvrJtamMONSCUGdxPyLO1dc7Y
	 6QeuxCzhcqVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F009ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335605338.16366.14435900247046333333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507c767470ef342d6e08ec13a0b6f9c61288fff06749c96cca9254bdaaae9a38
Date: Fri, 16 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663356053
