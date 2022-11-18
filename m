Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD77EA492
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67852C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668807654;
	bh=aHmJECW6h8LVNEkQ9K6v6JmUtOd2RPAkA41UNr8oOzw=;
	h=To:Subject:From:Date:From;
	b=KbAJ9CNO+L0DKVvYlJoYEdnOc+h5dZxuOgausrVPzTXma9IoetBJxH1VjwYugJl3Q
	 q5CxKoVXBAM1/QxeR2kVQ+aIxq2aPEsTZIUWXgD62gMfcOHEjp7zrOxWpgL2k86MRH
	 Ct0CXavPL0nFQ5JX92ekGDbfsYScLvKoyXEEe46EpHyZxE8O62cXvrSMzdkcpJbUKt
	 csR+ANr3TCKx3Za4mZPelZT0w25feu9xMDGaYY5+QEDeeqRz6dODKdwodh3j3ldbLg
	 X2dAlKn4t/XcQYvY5/IeN4VvYrmuGaiwrF+j1PvMg8OseX51Ay8nn5b8PXs5AZ1qVw
	 U1C71g5r6qdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519ECC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880765432.12279.7145278857229986293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1460c58753138a2e093e1ba73bf37285f77b3f4f61d9bc4f34162dacf8cfdec
Date: Fri, 18 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668807654
