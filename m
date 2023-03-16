Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344B47F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D121AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678925405;
	bh=La8PO4FFC3mRPYiD6fsK8H3+Z5IQRGI/w4Z+0np6PEM=;
	h=To:Subject:From:Date:From;
	b=t+L239TtGUnz/Y/hlBUdfngJtJyEkffIV4xx1FEpACTqrOf/HQtf3tg+BFY3KVMTm
	 G2oew/9/2ZDZQ67Z2A2DPR7Ykq2f1xOTeEOiA9h/wF7YhYiCZ4npwwJGu6bTUfYqKD
	 gMahlMYre8FI3O2To1vwO3pLrQTYMYJ2fgnB4ALWMa+/g67G+KgcvFm62SwQOu+x78
	 W/xjmyi1pK2ocdkG1HVg3ghVwoUoZ2NOLOXzs6qhi9cEsmQYH5/3O4BOvyUBnwNa//
	 PoYG6YGxnfRJ1/BV1qyQzxgbqUTGFqKoVGU5E46MXh5M3AQsWJ0hbdEJxAjU06pcMp
	 LZdRfGMP5sT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E55C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167892540572.5647.6607714073213066800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78663b5c121936633410ce64a61cc55d790101d52951fb2d73c99721a533f4fa
Date: Thu, 16 Mar 2023 00:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678925405
