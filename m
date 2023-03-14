Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D33BA930
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20196C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678817286;
	bh=RK7501+fY946/5QfBamAnDqTJkL5VSGI2rKvIRfll5A=;
	h=To:Subject:From:Date:From;
	b=pE9KiT72mz5zoRxzoYd+eoa3tgN7klm4MAnjwjluX97CNHoiBaY+jT/bBZxLRdOGP
	 2nrxVliWk91/zNBv/a4F+pnm7XoY7N3BbBOuSOIM1j9egvq2yjg/SrAInhyJdAvuZ/
	 A/EWvXtMukXjwkOI/TPxZ2TtiDPT8JvRHfuL893lAsRKZ8tTJBXdscgI7qGPrzoB94
	 TbKtQgAhITpQAFj4nrAAu1NhLo/JR9Z6ABxK0kvUJNwEzz6iiS8VXl2kEX7NlcWSEZ
	 I9JOcpUgJbYLHYGhhHGwfgaSxnrCbzTytNueKeTt4cxt3XNP3c4woRoT8G32uaZIqo
	 2JwOc4/ZYzilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF802C74A44
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881728595.19679.8205241712477088272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76410fbed5d3ba329c65b8499549795406943824aad9d6a0bf3d9272db0ac2f
Date: Tue, 14 Mar 2023 18:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678817285
