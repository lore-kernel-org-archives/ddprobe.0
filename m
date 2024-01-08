Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1720D8BF6
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjwGfF5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3F0C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704692296;
	bh=Obba+qNjjflrYuD3/499rr4XCbQ974kS4UlirFAglk0=;
	h=To:Subject:From:Date:From;
	b=RjwGfF5+elSeNgEbKGWbTNeYWFWl+9cLPcfZucOW0SqhnX2USjWuj1+8MngSnb6c3
	 Wl0PfIPDgzZBELIJcCSXQswf+e/hioa31HYHf3ye3pCygpsbbdxDeI9G8pNdxL0PUV
	 Uw70EXfGPFa3cGi2TsY9URe5UZponh6iYCNorrmPQeN8mvJVufJusC0XforiQq7cqt
	 la6RrZ9QalAIkP+Ybv4Tv/yTqXT64c/o71ahZ9w5fRj9VPQJED9BFHLkJFHakovgCS
	 q12Z3m4BqCO0ULFOwRmPrMT5FsIpuLiLWqttS5+0siqrwRLTLBEJDANdT9dLBdotNu
	 +X2CGRoLUU/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E02C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170469229637.21183.865883196320723069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481f3a868d20c41c8d60c10731b790d22131b375647c5117d034d17272eb8537
Date: Mon, 08 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704692296
