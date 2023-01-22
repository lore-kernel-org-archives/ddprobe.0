Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DBD7E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE699C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674380526;
	bh=uW9zQu2hSEoe0qOcf3eLzv2TTt4opJ+c6qgXDYctZVg=;
	h=To:Subject:From:Date:From;
	b=RzHVGKWJ5Kt6QtZZQY6Y6WZv0/oy8/PP63pC++Nu3AdRx7RZzsJMaYH6iqRitgOUF
	 sgN0rbVguNN0pTW7QwgNs+ArpUz8odRRRJuYvtykTQMIKELy+AFKGewGYDPVFKw3g+
	 aONPjU68PgPLb1Pm4fbmwQ3ObUgM4vuukdlX69T7jF45yEpF03ibcnY9HEHMs7gdfz
	 U3vXeNB7wAgt3y35GncEE2FdhP9J1e0Z5wBtrVzr55FhyXriNibsbO9Nzr4KEGcQeZ
	 WneiPXFeCnuzEdn/Xeve0uuW/pxTLhA2RjEfiuoFIe2XNmVWVWJHBaXjoUkzTc7dHj
	 cDcSdTz34FY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF408C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438052574.25233.3680687305414244855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6df998badde405f9917b8feddbf19a60dbe9970a598c4f843606ecd66461add
Date: Sun, 22 Jan 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674380525
