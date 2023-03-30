Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E011C31
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 08:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00D2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680163746;
	bh=0bLs7Mc5EsS5ddgGJ9KUClgHEGzTn79Vg8JtcGcUuMk=;
	h=To:Subject:From:Date:From;
	b=tcojo3gzcJ1fW8ECYWdpKhK3KNuuwNbtYGtatlKse3aa2QvgNo/eKnPmWx1N0tpnv
	 LWfWsl5VXAtKcocQuubRyR/JkkotuDVfHVqit9AgdF6rD4Hx8TwELq1ej9VBCNuiXM
	 t/LRtAHko8gJ6o6Q/sNN8KMjAY6QPdPMo4I/QRjU1iyt609zBS8r0G4oWU3YvxuyPw
	 74BRNsCzx2RSZKrEI63xFR5OgPjyAv6s7Uk6mR15q7yw9CP00ZQos5QKtP968TS9SE
	 aQOKiQBWqn7x6QDdKiiWi6ncdizjWluf+bSz6Se1yh3aKmfmkDJn1puP4EfWq1FYm0
	 TJ8NczGUU/9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E74C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 08:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168016374581.3086.16205738670782327003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8770c83b4492fa0f37f4d98e55d924dd2c0daf1897fb144284c1e19c33fd4653
Date: Thu, 30 Mar 2023 08:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680163745
