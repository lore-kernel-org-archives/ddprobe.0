Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25905107B7
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD99BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676374505;
	bh=uWpUlaf+ThbS/58dMJN0jpnB+ln4gcFgKuwgJrZxOb0=;
	h=To:Subject:From:Date:From;
	b=LB0pj7omHOqBRLMj+p+wAS0W8sDIFhlIyW9Wx1G+livU9auyMiJ8JCLTxoIp+3ir5
	 DGKfaA62mx0FBmRScX9nFk+MXgHsnbtp0k6pB6CeV5+wBSQ/56rx3tDs8musXyvXQM
	 Z1LnRX3liU7vLKzM8HTSMH1q5Nq7rJOFfMtWicqagZbVxI5gSji+UQmzf0AZ5+pqRp
	 nF3VTO1aWmNfb+CEf+EVzisZTen6YdHQJ700V+ZREJDPyTRbg7DEvaq653prQlx/x9
	 5xPzQKgk9JyGcPpFpoXSoT9nFQY6Gcofu+7GYp6KjGx7sfV4+LJLrInpq502LTK6H+
	 021dnQeBIs8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A1C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 11:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167637450572.20573.1606387227576947853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e810e9365971cffbf632a5a20db3ad973a32d8491eaf7c8d9ef082adfefed61c
Date: Tue, 14 Feb 2023 11:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676374505
