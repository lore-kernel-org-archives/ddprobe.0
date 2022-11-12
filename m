Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB91A7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93F16C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668217854;
	bh=jNxXROzMe23PK52bWinebQ034PCX3Fd5jBtA0RzE3cQ=;
	h=To:Subject:From:Date:From;
	b=VEIrgSQLj5f+RAng5CZ5cQftxjZBbWw+IshW/1H8tKcumNIzd0YZiTW17QZRuArk6
	 j2RiOpmvixDWU8XieWVYjkabfKQ1GfKnzoNG/U7NysH/zNBThxSD9lii1sW8O1hyFn
	 +Am6yq2G4tRVe1WeMrb4fT5ZnMOseTN0LhwxsXGqzNryazakKWEgqxdINc1Jm8+B+w
	 mBmAR6xmNq6JVEMILL5EpG1zoa3dkHy65c4KZ9GiBwDZxkSOdO1ow15cmoZWtTn6u0
	 tWiKluoZ5Llr//gpEwnJ3rZyPKe2qybRXgVB4FCUtB6u9VWCXBtIp537/eBlfLEP9s
	 ertR4X0ruJr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716FDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821785442.27193.1206725095012801871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac69be1618efe94f838c34d1167d9accec9440551532b23d6fa0ead7049d9d5
Date: Sat, 12 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668217854
