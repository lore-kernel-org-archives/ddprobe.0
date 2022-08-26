Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39E74400
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F877C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661530852;
	bh=0DXw6SIrqQHecEgGS3J5rZkHzDVQTsdC2TzIF/+k9Zc=;
	h=To:Subject:From:Date:From;
	b=YDvxJUeQnPLM4obkKpWszcFJDd7H9isc4d5cRF5Vxh6DMmvIF7WUIk/FaSK2+mmG/
	 ZPA6jFmvz+H5I2L0tUSRbB/xITnlVIytrmMgsBPBJXJy7X52J5QSmaN0O3Wbnctz4N
	 8b4ah43awfWq0pf1p5A7fyvUdr7dHTNvhPxS4ZiQYDFjqLu1W0fb9ekhf5blVyicnA
	 cgr1g1bpAnDK+Si45MJSbPEW6nmk0ky05yk5GeJxQaI43/LZuO5Y6NQO1bbWmRkJwD
	 YvvCm10idCR+NqiIdQ1DMyybxkFW1yjuKLYwZhcII0Nn9cBJN7XR2GmNNzGeKWxem6
	 M9nJoi0UCHksQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E83ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153085234.24909.17369583022442665657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9cb8927279a97d32b0cf8360df3bc989c1b0dbe3690d8d1b49ae029b1218cb
Date: Fri, 26 Aug 2022 16:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661530852
