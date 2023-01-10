Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81497474
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1C4C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673386287;
	bh=6q1mMQ1eKdZQq1nB7lMKB4BI9ZWREOEBtD3hZ7I/SKQ=;
	h=To:Subject:From:Date:From;
	b=cHUxUHxUaUC7VPzZWFdXsQE9i0PFvgM+omsm2ljTUr+efoeSKbrwgOJwmynK3yDvw
	 oTJKGId/7mTQCwTa15CFEj6sQ/g/TZEM8ueE5CdzSvzXi45M+zzNUBlRYsdHogl/J7
	 61WWh13MQmU61OfuZmr6pZUdd26o5apDPgRqPiAMcUl+G0w+smjHa2mJQCQK+V9f5x
	 4JD1RgJHbpu1Pzp18DXFalD6ps3sZixkRDYHVF1LfIFxOZbY8TFi1aHZVvF6nPb1sm
	 dUwapzzoLtZv+5GeENCs6G+K06jdKeNSyCNUPrnVuECvU8/E2LC73qJKpHebf9H0dP
	 4pfmWA8hP9HHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7126DC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338628745.23354.1619587426321346976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b931f46f45fbe91c8d5e762af527149a22a96c67055642ecf4e7b71db169de49
Date: Tue, 10 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673386287
