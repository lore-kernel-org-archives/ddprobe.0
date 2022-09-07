Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36812F42
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E33FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662583253;
	bh=KITRsNmEKJQ0Oi0nw2A+Evoi5hon8XHGS2/F529aA2M=;
	h=To:Subject:From:Date:From;
	b=LjbParHwyTNImWFuUHWOLrcee7fXFu4wt2lvyxPTQSULAl317xEV3khHSXnHTc6AK
	 2pHswTNo0uI5BqDK89+joNm9tq+sT8gm1DZp9Xt/rCvSP/NENBS/BUEG6DKTI+8ed0
	 kiCwvfb8UCOhW2WbeJKkNuKNa73vKouTPK2EILYI3/7UcZS3qnwZpFALl3E5iXm/mM
	 BffB9pfrd7PoR8K6PN+hJJWEX8zONDcZ8lHLat12VFpLgjh/0QUk7wk65WOovo93oG
	 YceLcbI+zaxEYPy92LZNSDY2Zyj37R2WJxSpn6Eg2sN/V166qkbbSglCZz3jDXT08A
	 Z7XRGMMDh7vwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5449AC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258325333.24685.12516905408485595461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111fa9f2bcf73f3264b5c73fc6057a6fe18955267d7f125e4cd70548ffd98826
Date: Wed, 07 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662583253
