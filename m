Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C57654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B1FC433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665040253;
	bh=IW6rxQVPQmb8vANcmqV18wmRwIYcP6qZHc1kQMMkOlg=;
	h=To:Subject:From:Date:From;
	b=jDBAqpaW0eTxzYrgNHj/yNVAx3naLixxTR37rZrsti6T/EzZ2KKZesSeloV4D3YUO
	 hzQ+VGRkU1BbH/kPi/G9CTEv9NJZmI/gxWQxiHWsEGWn+czh07zEg2106zvrLhaVTX
	 lSBcaEmOITiDUhz1HPeK9Kfok2Gh9kts88JmA/ICNuApj1E61pvmGmFiDdKo+NSGsL
	 YUFVEHSG2U1vG9uTLGJvPxmoRsPQqVo6dkWSeuyU6yBUn98tmbFdAMrwFVRJH9tcbK
	 AM3W8uN+9bu/mbpVQI2w1JN7IeVmcaNA5FdratHDCZ9cGWHwgLW7Ps68tqcZxzcOqP
	 IJmDUOW8DJ+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57ECAC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504025335.23626.5322030041633557907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f720d122549f4f5f2ded93b750f0daac2bda4ed770bec6ca4084484e811e20c
Date: Thu, 06 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665040253
