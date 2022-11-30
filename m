Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C740DA2D
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC5DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669794054;
	bh=C6lwFUSdW38lbZGvZOIsxnhntHvL7vk/IreQ6+2JsX8=;
	h=To:Subject:From:Date:From;
	b=gBh7BtaptOnDWFkgiZTYNMGl4bQAPo7/xYVtCEY9uMKj+kHAapwVNIFy7bK8yGhAE
	 oT4v0vqgjSwlkPHVupOFpSZkLihCCWjEJizMznLfqFNGSS0YzNcBPg6Q8yr6QrMSF+
	 YnWt7WXAHQ+QM/TwDUYukPByeqwTo86uAN0D9kfQYMiSHN747mQ+12T3Qx7BDhc4RJ
	 nwtLUMARckKafn/VpNRzx0aCAMlRGIpndmukzyif6vPJ5Nx2eSytzhA9T7y5jIOdul
	 C4Lj4vazbF9EGifzC5+xXU+dPFi23g4oWBc0ZJOXUx4X0NoBdFcAiGcfE6qy4eb2+T
	 Zzha1Kf6oGC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E18C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979405434.27191.18376861947476845433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f5501cc01c105aecb361f29dc9c35649e970b48ac2288879d04d2d8b8c86ce
Date: Wed, 30 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669794054
