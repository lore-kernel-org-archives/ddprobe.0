Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDDC8494
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C5CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689341468;
	bh=gGJayT2SZT1LBLfDzRUcCNzzad05KVLf5WCqNTAw4mA=;
	h=To:Subject:From:Date:From;
	b=UZh6F3T2bbwTGD3gZNzmUHzA6gmyDZ+t5PY4IUmORWSkFkzRE6IbQTVMirwp9Asct
	 104h4LX5cmJ2c0ChlBMIpehheIb6qrKdbxfmlenobA2ISEmNDge04fMmKxhmroX07a
	 UoMlM2OB3RO8IMWZSCgrkt1TyznxieKIfPU5D5sB1YMMxljamuJRlyW+iWoD4Z/Mn8
	 /fQr4blpEiW6nHFZm89G1R5fHlq+in0BjNg1mF5rgQsNbhL3QGek2RwX4FVqsNKosX
	 8ZdBKE5rEG6iFpvsNvzAou6N0AtKxxrEJrJTwZFykkzUvU4Y6uYa/mPfgD0Q5xtL3C
	 aUsdlAoIxqK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3ABCEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934146866.27844.7278395502078838620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9527b80f53e7efa9cb3e033c37393bf29e4f5c57bee8b7e61f57634a0203c2
Date: Fri, 14 Jul 2023 13:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689341468
