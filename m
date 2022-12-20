Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA2C4C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814FAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671549087;
	bh=JmFLhY4IS1BNusBItEZuK1xhtFz3WQSu3iC5CZB37Ek=;
	h=To:Subject:From:Date:From;
	b=VHH1dnCy4mnI8NBUwhi3xGGwb+hH4mQfCddELJO0SFcnop+UeSherLvIbmNhBymeH
	 l6AZ3/Jbj1ojVNgNjVc1TEgM46hBGGVqw9oxqaPZNpt4IhYwt5jeLl4cmJ/aws3nbU
	 4IXQsqHQkirtLG9dupf4goSNjImpRUL6mDoFbn7Djn9KbB+8ZAt+iYLWHFFtJgEwMT
	 O4fdl5Kmu1E9pS3j6YMFcszTVRAQAAqYHnGdSF0uOIcQWYMTJBnnmcegz/Ixb5sfLm
	 Cv6g7rp974X/E1M6hWmH6YKTR0EVaW6xgSNrK+D7e+DP+dP1Uw4CbJcC68nxVFgHNT
	 hm5WxA8nKOJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67236C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154908741.9318.3547021915928324397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5611813dfa6e458179e60d7ffc6315e34eb0235fec44bf1d9b49c71dd938ac14
Date: Tue, 20 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671549087
