Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C6333EC
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691D2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669070454;
	bh=tqKyt5JvsOKnc3ztDpTjJ8hozA4aL6BAl5LpjpX7Yfs=;
	h=To:Subject:From:Date:From;
	b=A3N8ShKEaG2XGYhVOdmB/YHj/V9Fs8FQ2OZlvjkUyuiXAIg/MnErsGhUnAQGuHbCy
	 UOJZdeDFRQGrqva05hgxkJ1LG49D5pxpOKgWvPYkwlgjdsJ5WYg39oDtV+/PdFT8m2
	 TDj+rtbbaNkBZzYVZLZaXKI7a0Fp7RTlhlhecgFISeGI1H/3ekcNox7c8DQuk7o1yZ
	 d0jeva6T5TKK1xr+C1RPsu4GaAdlW4zCSfcw9ccWsrW/dSIwNyAvHafgDWhfymZeYr
	 SYB8YTAi5Oc/pbVA3mM0MExOLOmclZBM31KX2wMOVAlU5Gq7V/ag754i/rLbuWNzuz
	 wOF7f+qjpjH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9E2C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907045431.12329.3331381080278462320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27f92a26559bc4701c2e22bc337956e223cd010dd976bd5ddfa3df62b9ebc64
Date: Mon, 21 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669070454
