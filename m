Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7EA4C6C
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A215C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663018253;
	bh=t99YpQgWQlAy4bU43U7xW2vxfgElFfLOUfsxrp8ugAA=;
	h=To:Subject:From:Date:From;
	b=p9mzxYgEwDliwHZPWnD8LgXXPTvCOxEs17gKRg4kug6Jij7gbrz9vKK9ALpJLhp/w
	 W3hwVXwqmyUC9f4IJAet4F11raxBDDk8E5RMop0W1Vole+Q7AFHGsLHJjotOXD+QQJ
	 UMdUuMO+O3yLdQd8VqRDEmeYPY/mrXfCGHfb+VVxVXkp+D8egDLmX332xfF2UhLcLl
	 7jJNBIFrQ1ap0/CmPdxGIx8KhHFe6Q7D+V+s8Ob82rm0SuwmckggU47j9ExSmmX+A3
	 qRTmHK9L8i8SzWHLH1Ab2XAjRIoDkzGJui/LKYvwnbq1TNGnI/GYqfKivOtJgdnPID
	 +XvqH1b2zaZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E0C4C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166301825331.11258.3679862580708906227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d592e0168e555c58a15d631fdde13471882ff91fa0939b481d6bd0be1510b6
Date: Mon, 12 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663018253
