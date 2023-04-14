Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369507C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FA6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681470725;
	bh=A6RHVDdl7JfvaOrJ+6Utj1sAq8t7atcDjucdn3ck0k0=;
	h=To:Subject:From:Date:From;
	b=DhdmaBQppsacT+pV1QV3gyooUa5wVhjYELNszpPNg5+8geb/mm0uXH2QRnFbVa2S6
	 EdMK0qTa3z/iJBV6j9JCZrv4R/TNOyqoyWJ5GlXLOpGIUuwUyAUypWilSDgHLFpw5l
	 YEcfWyafQx2JDVDJCcbWYucwI8VXYog31UkrbF2bEIGgKmU1U3JE6B7zmzVlGY97eU
	 B0uQbTiKBQhJfpyMfYSi9ePzAtNQsDk7awacEwqv0BcD/oNH0lrrvINg5ECogEEgl8
	 rV/u4/mFotz0/O0rfUG/GupKLBI541fa4CTNjap5nMjsu6ic5TYvBMA702laHufMBG
	 P4jAu1yr6F+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C22C77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147072575.25193.161108645095925748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4f5e20339c3263871b180660aadb21d32a57e87c469cd3a84973729456a8e1
Date: Fri, 14 Apr 2023 11:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681470725
