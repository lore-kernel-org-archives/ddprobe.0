Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D1F7F8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6527C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694744708;
	bh=Yntr3e3n8NmXjQaM7W72iCQ9gfvTz9KqMMitYg4sGAc=;
	h=To:Subject:From:Date:From;
	b=nI3681Y6f8oS5juDwsa986KMaJtDO3g00ZU6hmTmv7haii5CHD8DFMgrmEr4JD7TO
	 chhoku1wsb9zYOtn+6lHwYNSM4idyfJkxzWKXfhYKTuSj1I4FlEqeBBAk/ns8iCffq
	 ZPwXqYsXQq1DmmguuNLPkn5AQjvN0iUJBzPtNCzZJz1ulZA+tL6wJqeVjk+sAqYL0E
	 bPGo9s+IyZNuqL3TqoEEpz5NLGZXha+DKSQVoOLo3xFXJp3enQ6smWFvDSEVqE7SJT
	 /RCCDJbl0xheVuv2cvvds7u0gldtD1xrRrQPQGTjVLH1widgW34W2XrUqfYvFDYB0x
	 ZzWpil4Fp4ISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5904EDE989
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 02:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169474470866.22387.2371424761703806106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f1c388d3ede2a4fc765ffedf36202cca19e4284cd9cb4832690cef5b244f32
Date: Fri, 15 Sep 2023 02:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694744708
