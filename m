Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAFE15BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C6AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671765687;
	bh=vIfVK3XF1xWBQj+3ONH8HX50zUvQzs97HXzk5ot23jo=;
	h=To:Subject:From:Date:From;
	b=HOr0OFiz9bwe8mSjsNn8wB/CJF7x6RZ/pBQ1UmNzqSDaFuYSg2yPbARryI9d/3uTT
	 THG0a+CPN+7fUMXYKk1L71Y4Fs94XtLQAA9KHlot24mbQNxiIO5N5MgNNg8a5CBzw8
	 MWYoYji9V+0hqvtkyshAw1woPykC0ZIpJwdl2p5bNbbVQ9+KnEXK6a2fioYPMyNYK1
	 jeH5IVKMqKoLr4nsomtf151Iv8+yVoGoTfujNBCMF40kjLc1xgsKiXo6S3WMKRsd4Y
	 IwJF2N9E17q4d05RfyIfsexdNPjQHO//ZYoKw1gMpJynlf5clLnZMBTRoStMXrMGlz
	 9h+UaiuJXx/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6925FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176568742.14647.2948086787128834546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbde6b74cef529301c1c3b8c409d34c8398a50007714fd7889f28c9254c25e1
Date: Fri, 23 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671765687
