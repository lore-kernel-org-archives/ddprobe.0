Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AA71866
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EED2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669969854;
	bh=tov1bbdDMc1pKjvTmFeBsmuEFVJr2By6hXA83XTj9Wo=;
	h=To:Subject:From:Date:From;
	b=ryMdNKznNtsNn0NIcY4TZC9VJnEgMarNCWx4430QaFOVbsrzv03vRrgnAbEOLRbjM
	 JopLQaB7g2rRzEW0u3vvehpKvfrM0NC4BxrJNOw1fvVss03ZXaZsZ167on08nk3TJM
	 iJaoeetSH7FyXz1N+1BYsYMk/QKMAu3gIoS3fEbxB3uR5l+RpS46XYvv0deQp6ci/H
	 JmTwEX6TICYT4FcP/hEjI+jY82sGmwdHQfFdXbZx0REU42zw2yGdkZjAXXHviWz4JS
	 K4e/VBSWlbmfTBNlPsXhJBEbcQxRxG8YOJIQtQ0hiMua+SqG7Yn1uEtHENdq24VqEE
	 PSKAI40Ka1A0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520AEC4167B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996985432.26388.4024748457619346401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc0f5b940f4ef61f091408afc0bc642b928a3c4a553b2cca8449e19249226ea
Date: Fri, 02 Dec 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669969854
