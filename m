Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D5E10E3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05248C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 01:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685670366;
	bh=X1bNVxsSkfxNIU4QL+se9Njdn3TztK1hFy5V7IasfN8=;
	h=To:Subject:From:Date:From;
	b=aCUkNci9EBlwkZpEglZkfEjNRPD8ncId7SvMxPbGCN3uUv3sb2nSEKnSscULSJGZF
	 HrXftb9hiIUifsHQ2kYEy3UoYRlQiQQ7fSvt0xyhpvnz4Nh2UTlWHXW0NT4SfOWuna
	 BqjeOBLWXmJKOBMSr1eLKZxhEI3Q7Vw56Z+snmS3+a42slfAklKnpLCXg3uwQVY4QL
	 ZGSgJem1mDpXg+HSLpgU+88Iikg4PlK62mShasURh0zqPIeUCkFn1FYKcH46Yu7ifR
	 6S4s3dTfFKWUJsr6MpxxxQcBCb2uHNGJFImYLmyLrZqFHZ2KrzOKdTcSHWpPLYghpm
	 TzOjvqmc9s3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D267EC7EE23
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567036583.31611.2437035868673328081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef426bdff1e145fa0a21cea7f183b46eaae8a68c553cfb65aae0c80c8b3e2a6
Date: Fri, 02 Jun 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685670365
