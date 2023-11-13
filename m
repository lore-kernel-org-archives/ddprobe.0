Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB223749
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2My8HzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96240C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699903696;
	bh=xLkwF71TxYf9JFmQZLnUS6XAyJw8wMRF05FJBGFaU9A=;
	h=To:Subject:From:Date:From;
	b=r2My8HzFoDdOfEo3hCGRonT7I9/FTTwu+0WfGjHOmXDCqior4G4a8EBua15/BkrCv
	 RY5tUd2hz41gQIq1y2yTZmZ+oBlTTW6d5VMnFHaqSYPUeLJWjiG+bNCo6sAh7pp37G
	 8ikwL80FKD11ne2IvoSMSO6xDk8fuK4TJNOYIfvQgpPwlELFWIXUowX4LzQSFT941i
	 C8khIU2Kzm4mezrCAS8qlOU1iJLkJnxN+AHfE+1U0KWm9cwxUzqWzaIp5qjfLBiWuE
	 Wzgcqj/vFb3R/7JBmgKinXX6vVoW6KzglAfGf26PJB1W8xtw8+zr2quK+Aq6bnprOK
	 KeRq/3NrlXRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 717FBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990369645.16745.13439797989950228418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1ee515c0888676128e25101747ef20332525470cf60b53885495a19eb29110
Date: Mon, 13 Nov 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699903696
