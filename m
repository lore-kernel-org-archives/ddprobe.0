Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92704C74
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77ADEC433B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661466052;
	bh=yaAtGfBQKBNz4BavAPEdc/kyIPmukyRmltW7Xsegxzw=;
	h=To:Subject:From:Date:From;
	b=RDQKEKXipooIdzp1tubL7RXiAcbKn4X6wuXlnZQzHLzYMWmowNeNOdaowwgRpGFhA
	 tF4X5ooGpTAkeuR3VtfCV2JeyKF/aPC6+g3xalkm3CxHmBu5Fv1TM1EjKrz7tyUdDn
	 CRlpGcMRHKD+7mNlNKSsfQLtZb4etQJcdGvsXB2MCjiA+KmqUTTHNVuyzJyUSlthen
	 NOmW0NZ+HLuKKfk4jEdjXT8lRNM5jMhWCMjFBE3WBFrJ2AdPG7lo9HllDauBNuGYVO
	 3J7uZ2OvxOFRd4fqAQIXSfIY36zF3HYnyBoYoelcCySN8lVahX/IQEEQMqvvIyccsm
	 t0aMbUPe7k6Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F9BECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146605239.4065.8660763876194428310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28800ad4bbca8d33a21847325681a5fd5ff2e42cf56bd908f4a9aea7d634e9f0
Date: Thu, 25 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661466052
