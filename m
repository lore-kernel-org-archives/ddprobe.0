Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D47417D3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DD3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688292248;
	bh=/QGX6CoqerAQDj88ba+aIDFrWXtPKPIx55Y1WhvpSZM=;
	h=To:Subject:From:Date:From;
	b=ibaN0bBBcO7F51Uytggyu0m7cJXBtCPyzwkn/CE7784mKLwHuA+8AjfmbbQzjVI7Z
	 WGMk6g7PCJOMZt0HL+wxnD2ZytWeMknHWIll3s2UFzgVBp60BbJk+LDeOpPzxXDQM6
	 g9vBO0QhjZx1d3+6NbwSkmfZb+5uF0QqDMhQaJ+8zgVHzjB8m0rbnv+35XNVziYB/s
	 PuQz9+WHu9PpAHSuz7WzaCAM+OS9aRUvqs/EMzXWGO2wAAcIn20dWkRwrIz7brCf9J
	 ANbtrVhO08rox6yfgqKrptJm9cXlFYOqA/VE3CFe4iTgNWbEjZ+5i4iphL4AgrBVHt
	 EzKhMkej8v55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E47EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829224875.13526.10579367758606046338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246632b52733dfaf75955718d68f567db547febf78bc5658e67ab55ed0c065b7
Date: Sun, 02 Jul 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688292248
