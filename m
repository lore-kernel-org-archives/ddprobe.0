Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F27EC6
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A7DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679208245;
	bh=aejgu+8L3+8kKLTWEdmJdqvHGMMEYKWnWCzay7ZJcGE=;
	h=To:Subject:From:Date:From;
	b=KZfsQMPtKP/cBOrhcrdL1FCYG3PQih4AOi93O6fPCUzXa4hsjq1Z87ijxT7ycDoag
	 m5LvU1VUbc04h9QwQsBwpoXy2JWJ5JKaVFW+Fn81FTADMY0VkRDCIlXasHkh8DoGhG
	 miCHL9UggCiaKjS8gfX5B2ze8lB8A49XsZnfOu+LEk1qn93ogcoJQiDUaQ1oHCHqek
	 mMVM44dvYmpPrRaY+DrZK3e5T10psP0AYdOp58Bg40B9uftq1qZqnTRUU7wEYSEvrT
	 +l2TmvLfK5Yel4jwZXaS8ZI26FRw1faWHc2Sl8sLlKQouRsCeL0T/7g60QUfpPzCon
	 9H0sqECwHiQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC00BC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 06:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167920824574.4178.17774554438679090002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43d1e8afaf750ce5fff2aef9ea316cecf3976280171f81c9288bdf14d8dc1a5
Date: Sun, 19 Mar 2023 06:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679208245
