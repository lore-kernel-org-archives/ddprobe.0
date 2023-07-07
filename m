Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742B5BE7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B88C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688730428;
	bh=tJEmuXmwPC2c6NgodoRD0vdyhEgFBHQf5hHrpX5OgY8=;
	h=To:Subject:From:Date:From;
	b=oe1AAtwDbZaHvRF9nonvnp8y6xGPC548usQIkBByq9GN0pKrnEZqdTXwP+IebrRJc
	 g/HVcPtCJi/gdT50m4LZWqihwNSLNDdO5AiyC+Sr6DoOlsJSeO2NxOa9a5ukGCvWog
	 HK9n7WY4yvmyNGFNm/nBOowVPfFnfn205CPlEb6oyxKuypGplb8pUt+dNfsEifPa3W
	 uP/7EGKFJk38sJl7CIMugA0i2JhCd/IvvfujgXDOUz2gZcD3UKvd1uvWEXAAxI3GHc
	 XEB7eUYcW2UiRSeZorETbCZOO+EnSri+kYQaLXPp8FkOL2VcLjuT5dPMcxhHZeRkSF
	 oCL0lD5Q/95kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3448EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873042878.16944.9297319107160604214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef940bf713a0b9dfc7f634692d512c1aa60bb3d3634986fcc154c88227b826e
Date: Fri, 07 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688730428
