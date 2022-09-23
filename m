Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1C78B38
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794F2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663912253;
	bh=NvLOuhNVCrK46SHvHTJEN6eW1lPjRH7j+7AtFt1S9fg=;
	h=To:Subject:From:Date:From;
	b=ZdEddHIw4a6avKk78OUxOT5t83sofMsIdkntQWxG+IP7CGf0timnTwuCRWCNmu0os
	 LZ4Svl2H6EwnMGU2qnUXq75LVw+bpBy4tHujD+U/qR8zTvkmedz7F2N+WXVxZ0pKW/
	 KuDsg7nNU02EoSeM3s7gZh6MTAlQnTgNm8sFRcMNxVDb+BaeTa+UwdAdxhIR18sDbh
	 1fYd9fYNgeMzMrHCXqyUD80X8+DEZqRd7T51m2bUgWHtFbOSoIOBVitIF3FJbVEBRK
	 pkEEizL9pR6FlA//DYNR9F8oD0yaZbuJn7zDpyWOXvFam0Yj2i8iZmQhEiHxjwHmu+
	 0gCJkvzIm+u7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF57ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391225336.30486.9353143997273567124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc640d51ebb3ce62c075abc66d709d53a3d3a9eb8ce783d358ed95f79a4b8b3
Date: Fri, 23 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663912253
