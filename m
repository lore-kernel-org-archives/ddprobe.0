Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322E433D5
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2E0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681978565;
	bh=lcXdQBT6SAjbVfmp+ACt4bBvLQVS/cnSuh4bC2wd9WY=;
	h=To:Subject:From:Date:From;
	b=h6zuItZ7sfAzdBNw2ksFdwBYZQjZtH/Ymc4zydMl0M7HRBDCgO9EPEZVD4jEpSRXK
	 7fze77MN8f3a5JMPewRt90HFVy4fspepZiSFSTFYcSDniZscRN0w3nohzf3HtmpEzm
	 APJfNgblZ128l36IY+2zyQrxtNk9/afr8COnJscGNKUU/O7tqNICYYI0+/adCDrSwt
	 /xuQF2UDeuQ1DfpbjfPd+Yodt9h0upBuPGFhp5/Cb5D3BeOJ58zqjeqCyFay1Sag0J
	 TK27lp5WzxALYi/exzryOeL6cTpY6+d1A7L5cM6rtijaU6gDI9yN+Lup4clJnj0ICV
	 DE2G3anrmkp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEC7C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168197856577.25765.5767954404404360718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16da1769272fce1b9f4903ea3a9fe84eaecbde1766e30a0fd323e940a7743ece
Date: Thu, 20 Apr 2023 08:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681978565
