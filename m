Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67141FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E2FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673172087;
	bh=GUUlfBn+hGOx0mvIcdrNQLwcGpMwc9KGZC8UaUXTpRM=;
	h=To:Subject:From:Date:From;
	b=bUsNdR8k0bqTnUU96f5Qrnm+TBhC52WZkFP/h2mFN5QPfh9ImxIi4SRL4CVWHAdnd
	 JPBGB5q+1M6bb3fhHVeW9dQWJNCVVxl+rD2eyZZrqVq0D9am+HBAlEaXmhku18Yp4k
	 adZ0UGBf+YbwFBoHzRKtsZnFELxmC/O3ReLdolj2KRK6hAQCfag9xevY24ne72Z9mX
	 4LGDisimWC00IavJ7i9pjlRGI4EdxecEJY6ET82KA8nBU/5btyxeO2BWY5KenU8O54
	 JsZAThECRlmguXZe6r3yPWqBTIr2DAUa7AwJ7AicFlweeRXrvhaBLiGL6L7bFWj+/B
	 oBEOzSyvGJzjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C60C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317208740.1957.12326415867012280558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9eba8c3b6eccb3c45d7475783d12cbaca9016fa0439171725d42852e968645
Date: Sun, 08 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673172087
