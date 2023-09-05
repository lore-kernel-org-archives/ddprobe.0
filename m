Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757BF375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF757C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693877648;
	bh=o3gZ/z3gcEqI69zocOaCcZThyZZcNJPmQ1F5H+I+3oU=;
	h=To:Subject:From:Date:From;
	b=lmfokpJMdI59x2JkGW4PXIoOJXGSd+3tZ4qeJlRAGCeLON5b73c6lbSl2upOPBhZg
	 Ui7l869ElAbxgQzzk3CzJEAdNO8WB/qXcRlvRapO1aCXAvF0KcywR5cV3SUTnLLM6W
	 RE10cYCcZi12o8ySoXBUL9TxbvN34JYY+CLGrHCUEuDvsfj8kFOdC+fDP/m9vnh4Qp
	 ihXf0Fy2gaNj3G9YJTR05FNt656MAzcwmSI2ex19q3ezfcHnrRvJS3+aAB3udWZFIx
	 /i2tqKQ3eUyAmAZ2Mh5yL7rUTV36XIj6uJvuI3nTY9WBoJvim/mKoDvbJr1y5tBSz4
	 QEnpAK3YRqI8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A7AC83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387764869.8582.10521311479556438866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9189d5328605f96a1032ed511b3d827388da6b01ae4f9c2711e0dcd3d7e15820
Date: Tue, 05 Sep 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693877648
