Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398C6803
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A23C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684640405;
	bh=9bYTCsC/Xq4mNqJ9whMY2Rpei6oyivHS1QmxOHoK8/g=;
	h=To:Subject:From:Date:From;
	b=Am7cjxdfUwm22J0Nq68ZSNrreg2VTkN6ufE3WGUWlgi+YgeYMlnIMpO8SPiAFCUXK
	 N3Jjo3Zr86kq0TeDH7UvphAcDzB62j0bSYhQBhEBmOrStGZUjvJIsmTLxuL0VMVjIN
	 bdHtHNhZwaCqGZ3Ruk3BSnpFlkPLgLZvKQ50/L/Unl2TGlLWFLMJLG/D5bwviZl9Ox
	 dmMPHGCYoqzSLcDeWCV7IdG8wff32K83A1SihGIJmfWOsPoIFlnWO3nJ8/PbpWPXiw
	 qUlZaBQwqtobQdIeNCNGfXMslK5YXtg2BcBmDWFEu+5qt0qZMh5srnFNxCNghZ4ZfR
	 gotMiPfoIfrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B670BC77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168464040573.30900.11057219883238181907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88ac4c6e8a497bb2b80e7b16f99bdfc1f2027fce15ad0d3d8e6ec557d416d1b
Date: Sun, 21 May 2023 03:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684640405
