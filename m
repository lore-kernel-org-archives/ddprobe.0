Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C18816
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F01E6C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685756886;
	bh=ndd3smHS0JDBwyWWDqXDzkShcUJ43AeYhGNOHNgdDIs=;
	h=To:Subject:From:Date:From;
	b=LO3dyaTWIZ+8o71jvpbtPc2OTkiQ8xE5xEE+sVz5JYcHu3lPEq8/nopEnUZWALrIB
	 ga64L5HBNiSSVTNNHf+ct9GX9dsg3JI3kPuQmSuV8fLt/oaa9sbmftV9b8mjT3lBzx
	 MdW3BbRVuRMmuul3iNPD44ZakSupQ4J93qWQ0JSDj4GWHnhzKkXJn9NARiUfebDFBN
	 kIUzypJ/L+0RGZ9qJHLUzC6fWmw3f17OZKruhFm6U6BW8KVLOBOBzFvXVMn2MavP4x
	 9fYaUgxucyqVjRN80xCaWJdr1yAPBZIsBX1KWHxLO84C6cKnLoeQ6yk6kPV0uAKAD/
	 nw0Ex9iaYLZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5018C7EE2C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168575688579.12993.15602670669912361105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316865d4f5be6eb78d4cc45ca3aa38f30515390eee369e799f6c0275f9ae4ba0
Date: Sat, 03 Jun 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685756885
