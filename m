Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72E028EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A538C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662361853;
	bh=1bFLOLtfwNvOg+4QBTivzfLLp/CVmb9lvHnjehvIRC8=;
	h=To:Subject:From:Date:From;
	b=LgKBzsTzRdvDXdOuWs0WikeQ5W1+LTT7Mu87OzdX3khhZQmhtas56pynVhpSiYi+j
	 SVeWQsqIEd8ObKVoB300LJ9ZDiNRoOBbYXcIH2+k7rkSTsgUEtaB3MxIg7segDjHzo
	 qlE94kcfOuKRtEqpYH3I+tqwtE9/IpS0tx0ya1aYskwsGThujYlyvkr8BxlgVLmns1
	 KDvcr2zumbVMHvVDwiR2b4llwl4lIHRnw2dpo1dKEC4AHzf3DKKSnses5cNzqv7X/y
	 uMmaJf50npwQJXzNdjuu8J3UOhxPLUCuCmZju9k0z50gxPfWeMhsPBuOOUvOPEGmtO
	 pUSw+C9tJ1xvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F97AECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236185331.2381.623999335636134679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bf04da2e8d27edf699d4171b4704aeb23f4354c699b31194fc1554b0123a4b
Date: Mon, 05 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662361853
