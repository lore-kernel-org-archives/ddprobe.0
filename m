Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1422F3A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B17C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679961185;
	bh=YaR3iyBWKSQW3fBktR4rw/iBO0d3ZuqOqSJJlDHLuSM=;
	h=To:Subject:From:Date:From;
	b=Q4lVWcOfpDrLSElpoANhdxGAMmE1j8UXPWnbmgsPjMYFhw6hvDcdwVJtZeJZwf3zZ
	 pKtdJUGcUX7uNkLe3xDfVphKFJ8EBxQ9S19zNGZLtME3yajQF/HBQFpTiCwL1HrIVL
	 Y/OVgAbpLf1uqv40FVxM4oUr80yp5rmBLIpo7UBUYtrlNM+aFDwt1UEoXTb51bTKwR
	 WNZLeCN78u/pL4RjieRjcaTwf4XJR2UFAafJwQVJfogFqe4eb8biD0A69MbhXSl8q0
	 zS+p5VNvyjtle1+BlngYSUlho/gDL0F3KWm+O9OdGb54FEgC4khKbnBBlB5uoaxHQX
	 giBxr+UogpX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4F9C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996118574.7770.14799839721359619750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a474f4a4fd7f91c9395f9ac7a7d8a392c56401f6f4835d899e79077e85c5c72a
Date: Mon, 27 Mar 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679961185
