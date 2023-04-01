Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C919E
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C73C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680330845;
	bh=ohqhlHQf8RDn321yOrtVIE7fApJhdbRrte8XgcZ7BSA=;
	h=To:Subject:From:Date:From;
	b=tVXOK47Hr5qoKkSgHObcVXM9dRfk6xc6aXw8MdmzmkVP0uRJLE5Gk+m5ijsrSNh5K
	 0LdzGbS3uaFB07vpg6tGqri/JUlzen8yXBZiTJ/dCI0RJEaEbojTsZ7dlE1uS4bz7b
	 nnwUGI/yJsKIXTmB6ZXI8x9BHfDvmMcQA1gjp4jb9v7N/1+59pNCi5EsO7Oy5Z2ZB2
	 lqR59r9RiTRcTXG/u5vuNGSU0/AceHLZYDZSUIA5ZlKb9yxBAZtOBAhM+k2YliXEGz
	 m1WpIuYRMeE5m5NCOBjk/tDu8t4E1u+T1pjKHBwNuZaWKKsAbVYEcQscZGBY0Dx9eZ
	 +fh6Tgp2PE3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11B3C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 06:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168033084578.25535.18395022411564282154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7074da5133f482cf86120614e33263927bdcc054f24c9d02417f5d4d50ca4b10
Date: Sat, 01 Apr 2023 06:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680330845
