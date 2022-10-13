Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93153D80
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73363C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665682853;
	bh=Y5G2L3ukZizSlUCaIFbpN1UEOAuU50fVQYD2xP7stFM=;
	h=To:Subject:From:Date:From;
	b=BqV0dlGsu23tggD9+JVR7ihGKod1QDBRKNn+BHV9jBMFWPTuS4LmA31Mp3m1+62ch
	 ENDnwoNHel2EilartcbCxC69KI4lJKH8Hs1IMHT/FLWtz+MqBfdtJTjq9c4bRFiJYB
	 gtqhuxwfzVr3vE7c9gqARwBoInVq5E8/hFWUq5um674hp9vyjchyyWVVCLyG4zUwID
	 Qil58O43D5yLRmCNgZbA8MYQnF5IPVNgu/C+lNeK+YXNhgVdnGICDz6DXbkbWYSpDR
	 Ael3iX6tl6+voBcz5nyObXVBCPMYm0kRZDVLjCRsTTB0Mxf6KaMzbk/lgzg0d0Kdte
	 1kBJcTPFg6lYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5496CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568285333.7738.15853052151472759325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50908961caf8d5e810282e29d4182a5917aefe72e5b793b97bd8cd49fad14668
Date: Thu, 13 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665682853
