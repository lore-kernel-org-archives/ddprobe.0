Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F793239
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C42C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662405053;
	bh=qiIn7YfnbW/q99cpiv3bKPPo71lbyTaaiNWjgOyncHc=;
	h=To:Subject:From:Date:From;
	b=ppJj1wFtT+1m/Fzynl3vkVxfTIqRIwUHGGwHXiV0/Rt/NdlyeRqfsBDHmOAYBpkKW
	 YuzTANwheT0ZPwTu/oj60hzm7SmlAA+1KW7lxomRxela+phxFGgf2f7745Al4ouPux
	 H1gTloab5/n8tqCxq6P9sXDxOjMcRs5Kq1tP/Z2yNRATBauqp4+bhST2IXsXRwuWzc
	 +o4Iue7Z2NuHJJgi81ObBt7fPxvVF1qyGDNVEejCRdx3hwpZFWZD3msvnMdOI2zqIL
	 Shohzsr1jiztVMM7eBZdx9M62MT0cxu8/qqKrHyTsSH15HoSlqXi6Zl71XdQgAF1b4
	 ckz4zRVUmGpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F587ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240505331.19248.1969076458237689820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc880cd221872fa01384306e5c4011ceaee0657d8499856d6eec89d341587ce3
Date: Mon, 05 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662405053
