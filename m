Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FE610F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A099C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665996053;
	bh=U6GZINGMlkPf75f95idPtedCJTLHAr2VJF7wbcFWnh0=;
	h=To:Subject:From:Date:From;
	b=jzyKDQQX5pIJOIm+LGaQjmbQv5u3ysIVriRvMOH5TF3BtLWPElEkUKhIpjLfD+lIJ
	 ujoqSaQ1ZSBY2yg8Lvmn4/ZJWXP7EBHpS+6y9ozQh7y0tiQteiwoWmIFg9bELcBMas
	 sLooSKNIq9Q2L+NICR9+mxUA5tJWXDhGAKHpjDBeptkXHUsk7Dh0i4xJ8BwuT20igE
	 9YMqnJbFz/FWXhOsPO5hhecHqgKhYX/62ft0wgTdXk4iB49mS94g927UpcEm0RpJEf
	 RnBYWYS/zxG8GNlnG6ZLSD0xcQB5zW/K52XkHxSrl8aRStwrp2xvlgB92+cc0Sh+ks
	 4//n0dSGT+brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A90C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599605333.16913.501422852533181227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf1c4ee381a2613cca0498d945437cb4a2decddb511843a182d2861105cd865
Date: Mon, 17 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665996053
