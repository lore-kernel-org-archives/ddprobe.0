Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0E07C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762E9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668561054;
	bh=8dRJKVrPgYxwieF8157oFtE0DPwXLUwzZ6lgq65lDjo=;
	h=To:Subject:From:Date:From;
	b=oIzsxeq1gn7kvW871c9gvsyinZC7Z1cslEDMAbRmyZlXZO7/l8cGyDER6/ADKcpz4
	 Tby+aNT4FAZmPJ+wvMw3FtcDdbANYNYExytL9Cf6T9Oc0UoF4AJfw5/uVJFnNYl/KN
	 YNYIqKIcVJfz9WW9CtpbFJxd7z3/OCvjf7P8/OEtAPNYZuvw/d6GjO5g2smriqinA+
	 HeKHn+8DVSAq7JpR4WSLoRfIvtPLLKA9sDoVHnzil5EL3mebggp8Kul0esLol4yqGB
	 BxgkSmZaKx0qOPQUGQllJnKKMTu8nRyMaVpJwe4DmHzbnbv2uTKCrC0M0aKxezHsOr
	 DYWZwrm1gZ9VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5854BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856105432.28243.6658956468519146073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f721d0ad11ea3ed57c3eab4146c9b62730ad0bf7c00b1c0a1b67f81392fff2f8
Date: Wed, 16 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668561054
