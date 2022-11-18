Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55FE7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73ABAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668756654;
	bh=f64fRpGVBSOcDp0J87Fi+FG8Q1ALpPRNf3v0AVxli1E=;
	h=To:Subject:From:Date:From;
	b=YClqnnl2CgNsR6YubxS4iP9pneBnPK3S5kn3p8YDQyxkDZ01gvI1y01ZD+IAEF9kW
	 5LkZDqk41mgdwWxaF9KtXc7ald6DhN6WDnpUf67iQSs6F2tp/dkGCF4iL7hC1H3Ys1
	 2fAZpiT14cXnd23poM73hx3TkzFLUhdElWE1PzUq8/5L7ooHdubgaFjiJsHKUAnUSW
	 GMd7JAM/PmOS9jVtaYwB1L/y2/cZeaDrMlac/zJ1GeDjcBFGJshm+LSxVBgY19AKf8
	 kRcMpNMYQPmcyQ5R9Lc151cokpnmoTEHhIaw3VpKIm7UmNmQYlRtLjTfWl15Z7RKXZ
	 wAOQruBJUDTVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5959AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875665435.11725.16307501647483871748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000bcc3afce52b11a8924a862fc8ba6ba4ff96e43b29a095be0d79aa1a92609e
Date: Fri, 18 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668756654
