Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF7B28E7
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEAAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685393525;
	bh=YTizEKcu1RNgggOMCHyJK05XEl3OtHDWTqkO4MjUuYA=;
	h=To:Subject:From:Date:From;
	b=Ic/s3yOt2BoFYhzJHcH6Wbieq1nPC2xenh4CnJofs1wIM+kYeary2YyU6m9ANpHV1
	 bq8T+7sxrtABaedjMOC2hrkCR3+iMjJEMlLZpvMMs+k8/ABu2QAUqzebh5d3ZCgmDu
	 eAx3kqoJfO2Il9+KtvQOkQJnnmkFHtux3A2QVGT1E13OOZXT1zju7HG2ofbzdRYSP3
	 rbhcJlIYVWb2zw9iwNnK0lBCz/2n4VQffvr7O7Q4MG3BMrO6OWLmbjfNakMr33c1oc
	 xEDGVQWEuPI3yx943VOueRVF0VvBrgHwUjXZD+YrB16Utv6NBqYSK2JtrPuXBdEeTo
	 e0YGdDSYtpcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFAEC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168539352574.20939.638597718874668585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b90652f590ea2265c30c0c747d437ca4f45f069fade137cd1ab22b75ed9f8d6
Date: Mon, 29 May 2023 20:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685393525
