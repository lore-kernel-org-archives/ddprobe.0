Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDCE639
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD81AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691472188;
	bh=Ou4p0kmP7Ox1nLBsU7IG/+cozsB9wAeRii0q0JXllLo=;
	h=To:Subject:From:Date:From;
	b=r8ZPbqRL8Oa0xaWDzUQwd35F4oxXf+f2wkCZxjg7vnGSAdk6d0mfr4008c+6Yp7do
	 ly9xEdL/53fD3jVc455NPXeeu8HVdu7bkcRY2HWEnk+DaxZl25jU2mUZFlcgECyx/w
	 rGK47dVACzCL2v/gzyjSZI9W6VRUzP+GgJ0RaLgn0A5cLNF/kp/XD1YckmNianGuVQ
	 VpKC/clapMxNzVf8x0tG4DFO4rIIHLGBNH/VcfYTTNNTQwMQ2MES4Jr4NJA+xQNT98
	 C3fPG4afb46Np4mEz62Crkp+bU4d4wbNNANnb7u5f7Ks18bi2IiDViK5tvdd509eae
	 gf0UxNOGiyLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B546BC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147218873.5901.3611037319099756123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896ab9cf9fa00d1fc7072101f476ff809b8e0cd9e47c48ccd4159a7cafa7ea3a
Date: Tue, 08 Aug 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691472188
