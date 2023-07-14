Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596AC13702
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0882C433C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689334868;
	bh=vOdU28uKCnbAG41xwZC1mIW3eo35Fn84Q36xep8/AaI=;
	h=To:Subject:From:Date:From;
	b=b62aegsI7lloHR2NiTcSNJWxo9Z27u2dJ0P46vnBxDKEL3ztKgwZoQUntW52kOOXX
	 dLFTPXsiC0evJxg3tCDkafk0rdqYenh/PBUeZsYYQasd0WWeCyAic8MWw54chKLcF0
	 xk0fY2DLGZngpYLJnM2TErGv0XIWuJOttYdvWzhuA8lVgUa3vDtvfGpVA3pubJ/D62
	 /rkJO5j2M5LzxlvbtHH1cbOC+2bMsOj+40IzNO7gi8xhbIgldD13HOppN4r+EhVkx6
	 MBEBQgl3bDdI/wo/emoJI9o3LxhysuXQuZ+OziAa5rMJJ0hiGyzal0mtfzADHrSxv1
	 X2+wf6rbyfbTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBEEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933486868.19168.15184061862502962221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598073026666163be4c56c10257e3f98f31d4a7289bb7c32ea4cb86b5d5a279c
Date: Fri, 14 Jul 2023 11:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689334868
