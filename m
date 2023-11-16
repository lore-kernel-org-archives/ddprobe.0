Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C4428E02
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjtGu1mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93B58C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700132296;
	bh=EmKWAN6uNOb+IPVouMnCi9YO7JVJJQNo2/hfv1YTdz8=;
	h=To:Subject:From:Date:From;
	b=JjtGu1mOekxqo9kEQ+t7c0w1VhvkO42Du8Q1DOg81DRK8QKNRInP7IDjJj/Erk3l/
	 g9SxamMH+M33jg/2S34kSVlHFUSQYBZ98XsdBuLd5bHU3XWh9kGWIp+kpjBfysUIs5
	 rEAvt8NjvNgDIlqyemP17WJREojXVGGxx/SbbVh4nWt+fLafT0J1Bbhq5UQFSYp1MV
	 L9AjhzC06B+TgSDJ8rxFU6nnjf+rXaPx3yJUtpsmxrwlyq21pAq9KHJ64hGvxnI3bw
	 wg/AQiXLMrDPYANul4/N45f1oZqxSUyPEx9L5sok5L0DcUVUXSGf94Fw0k1qPcJlRf
	 SoxszaXTCNSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775F7C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013229648.32270.1048694065035152175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3405af0d399eb8222d161564e254cd91f8e2fae32bfabd023a7cd2eaa5df83
Date: Thu, 16 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700132296
