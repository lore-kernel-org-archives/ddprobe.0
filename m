Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3321988A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F1BC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691170388;
	bh=D7oQo8G6OEpwu2UUmUeiIWEjAapCGYUTFFyu1PjZMp0=;
	h=To:Subject:From:Date:From;
	b=EN+DR5O9R0LhrruYQQlKbYxwfJC7RMuGAuOTQUPwEiaBJfrlIUod04NJTw47x5E8n
	 SuZZOig18e/k0uPb5bN0usR9Pd8K0Ux06/SfFnbt7/v/wunqothNPXj9wmqfcKHvuh
	 IpKQlqAq/dxYKWGRmVnTV6BGP+FT/hWV81YD9QGd0TEzCU5nPSR1ZddCBBQmd5miSl
	 KNu7OZO9Dw30GlonYWU0vHYV2AERGursH45m6mdo2ftcyJzPGt1vifQNZ/ORvPSNCq
	 2/cYEan+jKOCqD0IrOyaBHYukPS8RdVXM9aoNo/7KqbfihXOH4si6jjY4HW9cYW/OX
	 GskGO/G7QQvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC943C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169117038869.20437.2250021589176621432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7bbc13477d57f619a0a1471ed1729fe485f9c9efe1d966682997ffc7f99725
Date: Fri, 04 Aug 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691170388
