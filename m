Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8BE19F
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 10:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9B4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 10:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679569145;
	bh=5lTZIdRxxeUVDt0OSb40lym/FnVYM0+hmnP2mAZ2GZU=;
	h=To:Subject:From:Date:From;
	b=QSijwvrcvEL5VY+KP7CxXSmxbLg2IPWrpxQRpa5fhHmxCdLmhLuH+TNc07/7dWhRM
	 Vv/5rn2sHTNUq5vRzsHGfdfCRKC8QD1hgiWpocg9REoRdlzI4OfS7+lXqkdHZ9lBEY
	 8dx6HmPjOm9UG2uxC2nPPaa99UgheZLZEEs+Gmyo3g6NV43IoQa7pwvnlkQLsduvox
	 z6DAVEn6e+zYu7cw8Ggu/I8cmqnqt3b/hA6qLgYXvlx066MKcv5cH1fJvJThey+puN
	 yhUwbrEXZQ81DWKzSjPKg9hb0KYYWTQQKihbR53r+I7Pe9Q9zHZc+oc5lSCZ3EOOzW
	 rFKF3f4xfcUQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE889C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 10:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167956914577.11556.3430905038578201267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea941dfc7440108f4ac4579e4f8a6feb8d667e60629f40d1513bde8b5d4dffd
Date: Thu, 23 Mar 2023 10:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679569145
