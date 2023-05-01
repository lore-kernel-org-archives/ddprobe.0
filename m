Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ADF651
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E6AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682919485;
	bh=WD43f2GSt0E5WvkeYkj+W2p7NztLXcnGzyBtmvumv+U=;
	h=To:Subject:From:Date:From;
	b=HJkR3eIYxjlZuSqp6vhGm8rqg/dBD0fHgV7w6JzLOhxjbqG0XfgYqyAx63A20XEJq
	 kP+IgdiOk4D0c/YgzsMBh0Bih828Pllk+Zg1GxuC5xNSsIHwKIuLTzSzeOOQmdhc5e
	 Ua1q5o3hRrf717WOsTDDU16CHzIUWA4P0vjfmwyBTSZzbH5C3EMXTV6eXoqBGdlf+4
	 3m1UE0I48H0SuipCptnoKb9bxHrMnYZHtvSYkep3NxJRVi34rQCsM1CIK+ZVNKEdi0
	 lRA9cw55xJKHZHEbMew5fDT4iqRjYXypfjJg9m+foyDgmFstDzPdw+FY9WwMr97C0T
	 nbINTRyYrOTgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA54C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291948573.24568.1492614636071780238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939525afd9e9cbe95e5bc3334a936c83c8343c985c39cdbe92fe10e391c39c3b
Date: Mon, 01 May 2023 05:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682919485
