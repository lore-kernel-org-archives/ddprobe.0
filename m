Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B07474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F8FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674251525;
	bh=7W0CgnQuqreC2Ee0PQUu8GXZfUzecfuz7PJYKniTNPU=;
	h=To:Subject:From:Date:From;
	b=iRcjpdkUP1wH7QlQF/SpRcVCRpBxQiVk6/UzytqwFm+WlqLmbzKEoM3u+5L9E49jF
	 hT7GFEcCatjE7HqpZYSkBt0heJMAlhJ4uJX+cefcO3n9FJnoG5RKbcxXdeSsec+/Bq
	 mksodY3HEXi2WdbqNbcHqUgeIQbPgV1gwMcGJqroWA05iWFBY4SVLd3mXtHHZXDQOP
	 Xp2HtBjecaRo12kgwtfbPRMfKt67DJ+R4EkIZIOqHk+4JdqYtpKZepr/M76XURvlnm
	 P+iUbtpEmVJeVSfOd675QhQKubQm+XFHTCW/Z6lWiPykms5DhXcz7Dhetbh0SCWXgZ
	 YDIIVPQlPkS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B979EC25B50
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425152575.27594.18284416949222925141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709bda04ac421e6b06739b4ebdd5b005f0d6a9bf8bec40dfbe95b1ec62261109
Date: Fri, 20 Jan 2023 21:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674251525
