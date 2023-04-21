Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637EA612D
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14C88C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682105946;
	bh=Kgow6Gey/Ql8FLlDVCe9C4oITqh3UfhT8Pbl1PfTxMw=;
	h=To:Subject:From:Date:From;
	b=GazLDht6MkqDO/Qp5he3qu6OjWMfQdIqfIypt3YzRcMaTVz+kqZz+MOgGuR29FsLL
	 HfJT2/vzAAlcWbkhZdA9OKTh+4LBI5zTRYtspKiFt5ohVYtgJgN6MWMVq8CKTnVmm1
	 2MURuU7m8U75M+MnUM5duMjTh18YtMZpbNU88bcWnp1mYY6yTxQf6+w2vPK+KOcRGe
	 g38tqw53+6I9niCn610Ve4Dw4uJz4f4Znwjlh1guYqRGAr75h3LbXfzniaRcXQTl9A
	 YHpd08ZOJyAsHGV2F2++38h5w9Sh+7Md7KLtLk/zRsTtmqmd62K5IDDeTdjRCwlesp
	 eR80HYOUkmpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E794EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 19:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168210594592.18673.10569288178176571747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad77e42f7e0999a501be3359aefd0aa7b757252b2760b2499fc08c00f4fc867
Date: Fri, 21 Apr 2023 19:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682105945
