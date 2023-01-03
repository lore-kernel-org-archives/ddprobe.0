Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A972561
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7F1C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672744287;
	bh=SFWxm+wcw5K/stgvJjDEx5ZuqWTZiVVOrJGnARMNcAE=;
	h=To:Subject:From:Date:From;
	b=FfOvhi9agyh9Fxjh3ABU/kRuGBTnmwFR+oN/rVMd2zVNDY8lTeW3cV6m4O79/yPhW
	 RloNvZ2ZuAkMxrdAzUvqawaf1pWgqiDF/kP4iQlfNV9z6WUzFOoaYRiLMKL8HQ0512
	 NXwBZ49IxzH70KDNMOHH6D2bCNpFb/Xx8bzcSEsK/obQy3gJgpveb1Lcxgx6k85IL6
	 f2sGSv9FaYNWwVOjSEcZ/UDOiVJzgHM9ldvyjqlsvsr1tX9GWW/RD5r1AMofLeo42R
	 kBRvFY2d7DXT5ckdrnCzYysVat6NeJWPAhucLWeM1PQ1QzFtmDyrjG8Ho57ZwZQFgR
	 yUoaMsSx61SrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2F5C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274428737.25303.7165659918717018181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0967e0f5484c9440ec92b08ef4249d647b21d05a94a4972e59cb8b7208b0f90
Date: Tue, 03 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672744287
