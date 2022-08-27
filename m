Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD798290A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64B6BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661611252;
	bh=PMFnJ26VLtX86rXTHNmmYK61j95kVs4U9yY5eqd06vA=;
	h=To:Subject:From:Date:From;
	b=FB0vpyAB4gQT9x8oiPVh4RSLD69S6T3HnGEVlzyCwrOT7u9YhQBpGcJHJC2xHgehF
	 H/TIEMlRuu45WHy0TG4IsBJaEsmES5rgLwaaKHGYyT1EUe2OhOpnKC0kI+mKI3y57i
	 eNC+GYvcLRZ8IOZQcUZPbRSLSeJAqOXT5PMbGbsCGqHox7NZewFlHHtL08Gyzq/RGX
	 O5plBzhYG3IGyBPgTUvXH5BHIWdfRH2j8RjJ/UaSPaB8I9DxKpirzhBe3hrlBHtnp/
	 fd9FNXExMBwKuIWPb8wiykgoQVX+J/UdzFh3EN06XBjYzB2+4lC406u29DkMFu6KhA
	 xsfp1h7ILVCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5FDC0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161125231.9628.16847794186409317016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f6b6299765d406d65bd7c28139bfc9715814c87a1ae4aac55fd5cc4bbfffbf
Date: Sat, 27 Aug 2022 14:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661611252
