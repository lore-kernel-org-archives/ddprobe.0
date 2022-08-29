Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDF017C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73308C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661731252;
	bh=qq0eILpTL4ZvBQlcycB/koacyS877oexzMkFBBXK10M=;
	h=To:Subject:From:Date:From;
	b=lm3/9nagR4kjvx3xr+EJXuJfwhPbONNDT3DtR/h5OKJ6EsLgqg62oBBBxPGDVktMl
	 fQSAREx4BXk90OAC+L0f7D5l3oR9t4upiuY5j7ILCj1IIeLUDHJnskrbARzPzMAKJR
	 BfXHNmM5Xim66u3cHiUqyvuxIDQjRozleGnn5/wJgnkX3/HJ4Eb9OCI+gEbkePLKr8
	 aV0aB3jhrgdcvpgRaACQ7QFvh7dWpmEbwzP4dcWYooM2dSoLMe2hF91a1xJpPDnSwg
	 IIZXqy1RoYhgX0AjIiJ1x+jneQ+VwUWdMRFKAH7aEH04CUqGsugoglUtedKB+DI4/y
	 fbqFNYKpkt0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD2AECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173125235.20255.16623474570879599597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa76a7060c3265e8d659fa50fd52dc2536b1018bbffb8359d0e01fa08750c2e
Date: Mon, 29 Aug 2022 00:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661731252
