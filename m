Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D645B20FE
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF84C433F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671062487;
	bh=qGmvH9i6ggcZKvlS7Rg3e6IuFQDBoE4D7rVeku+ijaQ=;
	h=To:Subject:From:Date:From;
	b=srNo/nXVKn+QwK1/3OauPpLzjczGgPdWhGiLDjL0hLNxhOpNls/ObvNjYuDZhuPrs
	 3XUT5FrjIilllDLh45FuGxZOudfWyhnF2KQ7PYEYinZXvYSh1IkFNoda8xyKpWHPkW
	 L5WqkbzDVSu9trx4hjrg344dbzThFS5APr2S1vq2DflAYgRICcvvoTLD8VcgLdorGY
	 tKGlwwQqjaotB3j0DbM1HlLiix+KGceWNJT/fJTFk94H11H/tw80GWv+N06Vxdmb+S
	 GRumxGGOgULqeP2vKrL3EE6n71avCEg1kxwO9X34Mk+8TqSZHYF+XPLBRLwQddGsP7
	 c8VJSNSG7mUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AA7C4167B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106248739.10538.9547519913949572900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ba1b5b58f56ee168f991e5749f64596da5a7cbc0480f32b671f5a8702dd5a1
Date: Thu, 15 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671062487
