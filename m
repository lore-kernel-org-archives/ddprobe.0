Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6301C13
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3FFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664458853;
	bh=gdZfztVp9n5RMV5W3cEycKgQ1cnxXwbxLdmdtWhb3Tw=;
	h=To:Subject:From:Date:From;
	b=mF1Ygh3mBfqYkkGcYSgSRfblwD56/ik8gT50vMBNe3nWJBakdEFeRDZB6IjGNMI+Q
	 cGZ8Szz1sjQIW8dJac7XQEyxVjz7eBI1oKmKU66xMqZ3LRu9PSQcaUx5UKK2A8stcR
	 ZahXiWKDFJ4OU286ZCNNlGnvVx/quQ1Gr+UegjqFS4FkMDKlY14VG4d+tY9F/KDdVk
	 kYxsSlZ0hDV2Vg5O/HBuj3wQVSVjp224pHK0D1+ZJqrZPo5m/+pt2BylZDnJDUyp1L
	 n8LK+c4py/j1cmqEhqRelZz0V8GSefrGBqjt8hUWRGrGcAR4LtTX4PLzqk6p+w/1Y5
	 V+gTyeYcXeRXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5438AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445885333.26821.5329510613439768014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060771fb80690f8ed9007b6fcd019d3a316bbf5e9c8bcd6dd15ee3de5f627ec1
Date: Thu, 29 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664458853
