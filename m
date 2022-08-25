Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C269F1C2E
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688E2C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661460652;
	bh=EHs8uGkldugJ2zCh7GFg8F3sINNlcZiFP0QdS/EpiIo=;
	h=To:Subject:From:Date:From;
	b=BvWGCR4F4NzFhsTCT7Yxr5O3bVjdroA1JPSbhsC6T4Vq95gc6fIDv2QJvXM0tNvad
	 Ktq8pp7WDt4qpob20fK/cmNeG2nZhCVmfraLrFvph+wH6dZ0m30m4GBZm78QthSquE
	 3TMPQcEFo+au3QyC/AoLiknINsG82f2B9heMpd9drhsonb4mgg6BJLLtqKy7wN63is
	 7ekJQKfdgKcBQl1NYihArljSEyQN4h/qNokrpKCZU2YL2LNcHQ6Da5rrg+Fluk4KKn
	 dZcwjdqdLfYvR+VITl5lb6o7TTgRz55eocCCuXNZmbQvMPlP9Ej+GtmLHav3OcfoGt
	 G9dcn9FpUPvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5696BECAAA2
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146065233.27234.11634379705424375348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46df5b5fd6d98fbf6a75e7e8ca9654968e947dcd42b69869cf749315eed00418
Date: Thu, 25 Aug 2022 20:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661460652
