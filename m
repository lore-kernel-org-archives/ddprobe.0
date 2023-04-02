Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A517E2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90DCC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680406505;
	bh=pkZ1eWXy1UIpgMvqCUWU808O/78PAga+tslw+hQTZu0=;
	h=To:Subject:From:Date:From;
	b=BeudXCJ759mCJNFLTXWI7erTQVZ4toauNF+Pynx/gx0cf9v9xYOt2l60ioZbmi6+w
	 LyDpgvE89xSg8r7XlvNmcFMa1Ho7iEiunD6w+xVoR101c/4bPthfvHgFT7D3qPl2e8
	 LoPJazpjnhLYwxIlBNCRjB/wQEBm5Dm+fJSQ+AZWshXcLBhssmQQLEShuoa+n8NZ2f
	 KJJusqfPM44W3/92xTVzMUgUD5NROT5YM2PcG1nEPsuDj8u6lgzYIS33dAo4FgcYwe
	 XKFw0euhjP7TROffptSntoUwxovZ9Y7PrOVrcZX5AZLKeMW2+5jBp+xR1YWgrFIoQl
	 tHzJqTAQ+jghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9698C761AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168040650573.29753.4319251984506499777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30881c9a6cb4c5c3befb5de594c8bbb27ac1110374983eb0e6babdf31deb725d
Date: Sun, 02 Apr 2023 03:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680406505
