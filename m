Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ADB17C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6010C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671068487;
	bh=jehBIUEPmKw5/O+SEZVK3UVoVE9r4mXNUtQvOIwhMzI=;
	h=To:Subject:From:Date:From;
	b=doahLJT+9RtAFneVlwvz6hYNEZYHpp78fqHtZ2XbDQbVf8RWkckmGx4QmHiVB5wZF
	 Phid/A4AT2Ve/+hqzFRUTgi/ZOJtAj0+BPBGMMV7lS5GS24lTMKttuU8bZocmdYl/P
	 TtFMrbB9RF1sQyYQTUph/25ItAduxNhesSzie3M7aIrHhL8aD2nJ4S6lR+FM81+EMt
	 wwEjY7L6v83Kv/7ncHNiRythguZ8KegrUQ6v2QTBsEVVZKvYE/XwPyKyUhb7dNy3T4
	 vA7TOOe+pvJr9Ggr3n+ekRi+F1DaxX2VgYXPm/NM1BQGNN2XB+XSYuR6rHYOMgyoSy
	 wHiSIpCEUzAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82CCAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106848748.5887.16671972319143783882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21497d3b8d79909ac9edd466a18415b70461854865a5304b3f76ab1b1f4fa88
Date: Thu, 15 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671068487
