Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1D5651
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 041CFC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682920686;
	bh=n/zYdvz3DOQlMtmF4GgK8iVXQ2YwJmu+P7Lv7qryRTw=;
	h=To:Subject:From:Date:From;
	b=usl8n3yZYCQ2w5jveRgfgph1a93GrwQh4ScOukfitMfYwINv3Yk3FfBMb4hlCYjhx
	 AX81jw129NZ/WpOnGYc++3hvsq1v8qEnwnnYATMZO7SPbhtgloVeAwPWjPcNv2Qi9Y
	 QPhDn/WwUQpHUFuGl5JklWA3IyvMkO2Zwg7V62AttPKMrAlWe86+UNIhNR53bEG3Zv
	 fmIlk9yacc3juQcYbsLnkFlvLaggp8ZDEpeV9QhWeW8kWz2KYYdIFiFWBBEd6C4A2U
	 roIYSqzd8ZkD0QNVIDKMBlptEzuHpgkeuiGFoygo08aZO7Ei1ZQYs+8zFDwwG/aBZr
	 Ai2xfX6f6qe8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2CF2C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168292068579.9775.5392955297258588768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dbe4095987bd219c999b75a37667c82959aed4ccb75ae8f6ce80514a3a2159
Date: Mon, 01 May 2023 05:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682920685
