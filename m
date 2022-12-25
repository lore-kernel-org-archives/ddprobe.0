Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D9A36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887FEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671947487;
	bh=VlCQpKT5UanTKZYijkyia9Hz/yQ1bH1lYsHVWC98jlA=;
	h=To:Subject:From:Date:From;
	b=U8hjAXk6Po/ruHfT61R98YgTyTyLVJ69euFXLriq+FSp8zS5YOBjbgoZUcoVLYWoi
	 tPBMtF850zS6Q00tJnEwfBGzhdxcqCyoWezjNdONgboJcwL6fbb14cCt/cf2vpaeUB
	 Pv0wlH5xY6lKX9S7dYkdzZ831u3EzjRudzSbJCyAOr+AgAQ8T9ZQ5kRHAXQq/t877a
	 VcDY7/TAKfxsKMDYv80rp+05YMKTQkvX3Z1BovBAeaKuHlnOwMAl9qgP4fScdw9hiQ
	 xw+0oJq7+UH+5poiFIR15Ly1DsZStcNpAwL3EiYV4NY38df1C66Ql8KrEGQVPVm72m
	 v57enfwjmCiiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D847C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194748741.25340.5997407519918727380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59e9923cb2b9f9abb69a1bb153629d53da1282591c90d4701b49aa090107103
Date: Sun, 25 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671947487
