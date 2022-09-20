Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB907C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BA9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663662653;
	bh=xeubGxIMRGzTb+qRE5CWdEhXKel+VFqgYr4ayLRh+SY=;
	h=To:Subject:From:Date:From;
	b=Rs6bkDq0k3uM7zxf7vEa1+PwtSY8zuMopLgP87fWFCqzAZJXzqRW5yjDVCNBpc0Y9
	 7oaU196UWUhxPl0heX4tsEaVhWhQuNZS7oSNHlOmFAspzZWF0nobzOP1sYHuoPyTbE
	 PkPzoPY4gpM2nU4Lyjeyl0fH/yiQFtHo4DYDGKswKg4qJOXu1BzTxnLRK7UwBqJhkY
	 YvVYuzd9+H8IA+aGpHPICfITCEr3GkhiEY/5xo+OXLMuq1kfrR4mQ9/rXBXMyTVt4x
	 fD/5oavDl/IIG8zwU9P/m8Qe/Wgfl5otetvdoGpLipY+JlsQ4+gMnA7HcwEj7V+nHw
	 weZQ1yd1Akcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57773ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366265334.27809.14292046566823122639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af3b6a97b158fef85ce8f022acda5ccdf9b47d42d275fa5195bd8f77a6cf638
Date: Tue, 20 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663662653
