Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DF224543
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 11:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7253C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692875648;
	bh=XWmjzsjro1UIjjBn+sIUt+53JXHMy/MqzinOfC7xm3Q=;
	h=To:Subject:From:Date:From;
	b=MP7wTVDXv8Qvgr332edewBTbzTekLXLQh1EZKZVrbFSNOoCkkyq9DeDyrynhLi+M6
	 FOj6tSEXPIVgihwAq+pm7Pen7PCAuLI/2L8jta4YwOadVv/uJd/nkBCJKbLAHobcWH
	 +CDvqTz1yqIjLpOMY0ELcGqq+3Wc0Dl5frJnEVeptcibwapOAGY/R7T4dk4TwS2JeR
	 /aKNqNGwWwLMy5BWDm6y4xojLdeBnjTC1CJ8C9Bq4J+mWapzwtQWjKSaSuOHOLTAU1
	 VD15MV3BKZC2mSO4WuIcdgNNLYwTZmo73aT1aRunNv6FWkCzYalEOPrI576oR+V5PO
	 Q/nCJwNtMj+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6376C3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287564867.21353.4260389938127368374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9639990a1cc1ba4bfe0c366c12622cf233422a8553c7a05580c51a3d36e70ec2
Date: Thu, 24 Aug 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692875648
