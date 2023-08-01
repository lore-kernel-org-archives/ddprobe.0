Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F7F46A0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE97C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690887728;
	bh=ZC+p/p6D6M81B0G/SFKqLFiqMgAGLd8BCzRYZAtdan8=;
	h=To:Subject:From:Date:From;
	b=pmoo2rUBfY65fZF9nuwJFYvWxnc0BzTvlGxxT11T5fAiMpq5Hlu25HDToTIUcgGbp
	 VH3BsCMWl3vbc35AF48YlwVOLdGzn0ssdvjCm6pdxWnPFyozBlJ5IXMLVYkKQugGrX
	 TW7UlY4b5zkLms4gMquCn31g1yxyWzRxDYCdc3gk1OAkrE0SLzCoS/fLVoaDRhSdx/
	 +qDBM8bRyZ6xEHGX9ut1+BqBitkYw4fp7hOBMhN1K/ZxYcu7z/ct2E5JToIf2jULpk
	 I5RMlMRR6cPmAbQiTvefYGLPxfdVg8oSLk7rKa/YUvrlxxYoix79UTd7v0qKQsNRcI
	 KLmBjo3oVqAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF76BC001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088772870.27692.6306826083223162318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8275f62622fa0e72b25ea16816fec0bf2195ddf9ddfed1e2104f6fb48501b52a
Date: Tue, 01 Aug 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690887728
