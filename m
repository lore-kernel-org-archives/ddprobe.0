Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D70621
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D8EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670463054;
	bh=5/g2AjqSPD68juo2IN4qbHCvKSuUYB6uogOmwTDnjYE=;
	h=To:Subject:From:Date:From;
	b=f9ErQs2Oq8qmvPkEDT352TzEZc/u02i0jFQBP6ApaGBplnvy5a80bz7w1kZf8FfbG
	 U8/4eYQzW7pxzefamzLJnzkU+ZD8haVuSn4+mkCSZzCNOWiVgrPvFrUqVGJLcmu2Md
	 q99zUV5dNcs3cXlZywBwKyR7vhPqMP1qzZWaID2u5jPoJNzkhEeaBaVsx0HaFhn7Rn
	 sNoYCkvEl5aQ+ooESyUvQRQOrCi6Et5F0tOUCQnlaUG3gUarwebwxOL4vc4rG13SRp
	 kjI0a/+T+BY91M1tvC+WT6Fq8R3F3+9L8G74FO8N+2LoWlFnoE/Pl8smdkvixNf75J
	 icIWg/Ru0IlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A609C4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046305434.29823.14859748756405689103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45860b549343a45549b5e19f588db2dab527bfe28e5b92e8c3fd6e4924ccef2c
Date: Thu, 08 Dec 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670463054
