Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD40EA5D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 699E9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664287253;
	bh=uPmaPFtxLMX6WW6A2f1261KEHscL5ubejPrevUkWHNc=;
	h=To:Subject:From:Date:From;
	b=XpKVRoaEqv8V6lpgEPvyC56xbFF2QzUK1hm+mOYMJyRk+NoyG4PIf4KJqwYPdaYsn
	 jsKgsIhHFXePnKw0myBEWp/uFIDyXzx3hYf4cW5hH6sEJiH8lanhQb/U7Cw38kH9W7
	 j4KfaOtupUCxnrmGzXzYlqSXWb7NwJ/lkcMgBngVL7BfgsQOT5yEoMz4TBUZRxA4lV
	 DMfnQLsTufsM4kcBIscpV/YjxkaC9qg8S7BW+6V5qEoKAJn3FzOADCTx3lv2aRRbal
	 rk2S9kZbKcEsHKJoAS4b1n0JnjPVms+1nz+obbhQGcmt25mkUd6HFBTO8rnbeuxsHr
	 qEjC10HZOT7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E21C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428725332.29788.9622038572194380846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a330437b6a2267b7e6720fa1a022290ce2c8cbae333e48ab8ec80811383d98
Date: Tue, 27 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664287253
