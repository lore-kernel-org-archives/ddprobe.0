Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071415A1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09033C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674697386;
	bh=uRvcShUze4GoCYDvofRAHsz1P0cL8X8FomW9gLSG1WQ=;
	h=To:Subject:From:Date:From;
	b=bwXp2i9zs2XC47qgaDIa9AjrdyRZnQ69QA3YXdcwob4YJhw44pZUywYu+9boGp6rE
	 F7nNgfZI/MlD463er0AO+KYs/1MYB4de5E06JlFyu1fz3Wm9pes2Jjq2Mk70kNSlsx
	 htMHPpUPGoatAzlOtBwtMeBb46i6eyyICybcbLqSXlu9Sfx+VJZHmKwef31wPqewrM
	 hG2zgoGJhSR1M5tv8NCrthcdpL0K4Qn10Vao4n8JhEjT/TjYLQ+N/zdmOmMkhxb6f8
	 1ggOAd+dSlXITJpCklsH7tZcRrfA4mheGCppbojAi2m5NMRrqYi6VL+TtwnCtkwnae
	 4oBqNBM94tNKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F88C27C76
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469738584.15921.11819514535026796222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7435c73560de712794b4417d8f07052575a48f3516956475ad5e2dade9834e0e
Date: Thu, 26 Jan 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674697385
