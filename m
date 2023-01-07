Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB37810FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 956B2C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673064087;
	bh=DCWqDieHQ1epe3zCsytJ8GcymT2LXpxGM/Q4ZsTafxo=;
	h=To:Subject:From:Date:From;
	b=bit1u5JEJgO6IKcjaCN5toySxeLZhKUwDnMhHGPV2LgkVEIK0Le5cWB4bDg8qKoMB
	 MBe2aCjBaIEivmtgzhAqQFbkgMx6cBQ4XE7QjaQb04AgBWe/9kQPbswK8G28gLLbj/
	 Z0dEmxnhIVkCOK7lk926vyD/pTv9bnDOkNj0PSx2AZK4RF9gwJP+kkrAdLW2/fHbC5
	 1X+7Q46zYSRkYDeqM1D4QCxjqKdEWotJaMmftssHgQCOSKMrMbuWIzNm9yS7IZPgqu
	 oOzvkkReYJ0M9x0EmKTFHsJhf8aJ3N1pv++1mpYJFDVhWBGcWK4PzuXGvFybzeQHEW
	 XIb8yAR9v5SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7287EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306408745.7309.3968857295351000410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf475617a9bbc7f9ff2bf80069c2eaf86c3021b356f9e280742d8f9e4e6a74a
Date: Sat, 07 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673064087
