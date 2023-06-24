Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C807F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB62C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687603988;
	bh=xu1/+NG9nokZcoOhXTveKyiIAO4GQi815s+ue3jnJhc=;
	h=To:Subject:From:Date:From;
	b=rNMt9mNaBxxy42+phjL9gDbeSwXhTnwAVEXW/WEOQ10oB5xy2yqhHkc6lKECwVTx7
	 UnaOtjR6UCs9m7DJd+edYnZ43ax2JWZg4v+uzEDRGXIvagqq8lk3JFfPsQYV4PXtRb
	 4mfCrZqOPOTocFN2rwzktVKEXuAEvfBTOmgw4O1Sxk1S4fmiTJWTdt9vSE+jJijSR4
	 X1trEf4Znnr1c6Zg9uTVaWtkMF1Q+Ub92JZbC1pBCiLWFQiJhV2N/wGCl1P6DmDq70
	 7jtY7JSDxwlRzg0oeisuzYsa+hDI4IEnV6m7xyxsAW6J+Joww5TdJU5nWdyRFSzv13
	 u6b+mwj0O3SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8D1EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760398875.12376.1252840330367667057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf1cce3d3d3fbcfbd7baccb280131c049431d138e6df5ccc03e13d81fa435d3
Date: Sat, 24 Jun 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687603988
