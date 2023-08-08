Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A11229AB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFE0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691536388;
	bh=3Ah/8wsE9Da2XjwFqqroUvDE+qnZS4tOYYEVrKbEd6w=;
	h=To:Subject:From:Date:From;
	b=V4Tb+y5zAJoL8oI45bQWYcr0KPpVQtnm0BAha/bJ57M3l9QXptsNDK2WGos/6e4//
	 M1a+TlxNJOpg4XG5NKUKg7riY5FPg0tHV59L9nWzreJnlbRQuzjWPyDxM69M2CjlYj
	 Izi05Sz4G+nvLOTmZrKrBhRgD7dyxo71U+lSxnAoJv2JLvfTjGREWKGyUC11XzPXPE
	 sZhplYe6p3ov28vpUHYcx6vttXCjJiKlaIe+uFD7sH/guRs9+mryP51mXXdtEzCIdd
	 T8Swj8+I22WmyvwOU/oaIEu4UFf7MYfCZKtT4RGzlHIg6gbgzwJflxmMTQDU8HM4rh
	 ACwHKQyU1QUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBBC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169153638868.1412.10439576593593607837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27c281c7d746700ce07f03ce0991df0b08f2425bcf608d32025f76a30e50be8
Date: Tue, 08 Aug 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691536388
