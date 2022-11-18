Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C192A2F43
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD32C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668783054;
	bh=Boa0SqbtMN/H71GdbtV9+pSHURvmPXd3YudrKxaFOyI=;
	h=To:Subject:From:Date:From;
	b=b+5F8m/kDRUncIhhIebMpQA8ODbpEcMjlJzsGPwQ6EjU+99GMjMcff+Hb5A9fcxO9
	 7dx/v/wSSwXD94z+SxmAQgukMBlCOG9q1uXvb8LyEIad/aFfpqPQVBA2yMnzlPUfmS
	 ca35nXGL/on+c0RH9cDpbkFPqitSx+IXCuVSzvQauEtS34j/RvIUdaJWP9LOvzKZKA
	 zMUZVQO+umED1btXNdeF4oYbbfCSdqs2hxLCAN/DFVN2Kp/ovRgrHXx6hCeZ/0qRDW
	 LOWMURZYlwlfDtRSeo/zGBLEUPLnPi5z/QCHcD7Ns8WdSqAo8a54T5EqSUYuU4azaE
	 T19lyitjxjssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D41C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878305432.5321.17677339462139582106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c8285585d1bd8d9de81ded2624ada459e67ec0f47d50dbb2cda79d276f1ebd
Date: Fri, 18 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668783054
