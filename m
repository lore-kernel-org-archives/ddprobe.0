Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB04823AA
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D705C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664697053;
	bh=ng9AoznyjJsXOEBuUKlFM55xARQOTC4l0a3ZJGGhS+0=;
	h=To:Subject:From:Date:From;
	b=UA1vf8BEclVxBkpjY+/FMXuREqAaQm+5cu4In5ssy8QrRl6frBUBtLxyMvO0gYtZ2
	 uXOMa1M9mF1466PWlVcG283npj6dH1fs4I21xYHLMDMcz/Usa2wEZ6DsxzLITVCEYh
	 7uF5b0dFR3wSqJ9w7eDuD5mQ1W0EBTFj8c+fT8kDaAZ0EZZfNAMN1lVFCr42NEx/hr
	 5NVBfF8LIUcHeifyTIvbIafH2UG5UtF0bcG1+N+asTEWXxx6lPoh/f3fESphod9G7N
	 ru7sI7nCRb4eMZG5tAw2nrXljEw84zP0jc1jauDN8KS0Wdwd6yL7VOrMGTpsLbgwty
	 6uHKKwLi2vXFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534BCC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469705332.24599.6269133173033491070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b366fb7009ce4154b6074a16c97d6031220526087e0c04eea8c039888d75b84
Date: Sun, 02 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664697053
