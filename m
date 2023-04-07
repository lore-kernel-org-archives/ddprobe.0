Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD11FD7
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF32DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680859085;
	bh=HKPa7t5Y6coM/WSLQ+hW4LxdlBnbux+moxNnvuKcu6M=;
	h=To:Subject:From:Date:From;
	b=XrLy3mFUCYvSzXjnLNHautC8nbHEsiSOaYhCxovyId9mMraD0Fxx6Ip+pasJjJE3M
	 rx8pr46v/VZ/lJG5jkhyBpeLOJzG5QdordIqmxnJzyd7UOwg50ozZVvr6e22jCvKER
	 pcPABLfpl+jWnPMIdI48MomEpaFK6ESY2MGD337rUZFl9f4JQi5sADImxzw41BzRfP
	 k8f0/B2iDM3Y1MygeZ6EgDmxVwUXGPT6KRj4deyCy4S0VJ3FW8bCpOcsSKspl2kRIV
	 WYvxqhFcm2NYtG0FLyevYFAw8WJtzdPReLjgZzhB7hNAnJ3iVOlT1XkioziqLNpwq5
	 Q4IqIAZjZ3tZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DCAC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085908581.21373.2682376141047579980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d6aa2b963cbccf67a16f8032e38b2138c2a638ea8fc7b5ef3db438b08a25a0
Date: Fri, 07 Apr 2023 09:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680859085
