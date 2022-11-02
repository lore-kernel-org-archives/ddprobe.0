Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA76C1EA01
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8097EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667409654;
	bh=KL3bvrmo+BJjcf8WBrx7pyEogE6OzqWyZuMJIHuzFzU=;
	h=To:Subject:From:Date:From;
	b=jhgQkN4zDOb+6PLjySqYWMBjWNjAQ/aTaNqm4XwwGwj0b4ZopiQcIw5rnx5YlmI6A
	 Je4vv4waBQ6Gv0SYhPmtGvRHKlPfHVqAWlbpSeE9hQ9IAPBFHdDC/XDmPBSNcOHJdy
	 itBNXLx6LilTcnqDumVIvqYksVW/tq2ZX80V0GwjKxiv3v0RyYxfwP0h6WcpYUvLgn
	 HaZb9igsZIRbV3qgcp56TPMH/VmEo7h7KLQbMp1Io74l0OjEJmhnaV+s1uj6P0+zog
	 TRDJWUW/7mn2Nbz+oYx3d+LtbXBKAoHsSgDZUFqrOO2OelQLp5c24q8GoE1HzRpyR1
	 PDNDTiWF9mFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F3CC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740965439.29337.5688172235001265864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8614003953330231d63ab72561cf8f163004655e8531753bc11be635bcfd635
Date: Wed, 02 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667409654
