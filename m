Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD408F42
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB67C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677869825;
	bh=Z8MfJhYu0ApIMdE9fd7vsTMGRAAnYSvk7eCdR8BTNjQ=;
	h=To:Subject:From:Date:From;
	b=Vk8gSQlZq1+QTXbtA1F8k6ULXaA4vV7Wx6ddV0B+40BMXnnUz4L5JDxhKpsdFXdji
	 DfCzxwyDzErzxGn06SXvngbJSyT/IaHOWZAGbjLwnnx1DHb0+YGHpu3/svQdoDn1mi
	 oxLz30I8kgyKiuX6CKTu4/FXfTnnwIW6+CIeCDFHWzohBx4HfXYM3u2mHdcW8+FX26
	 egnysSCoaEAbUpC2Xjpspp9IR532jO4PNiyGj4G9pipaVvCaIS0RGoLKGih6ozTSyq
	 QpPaFyLLT4PIBEsNh1ha5vATWlyzdfbKxVC3YPM6OkH5sP95YD1rRhtl9S06gBuGqJ
	 6VjeqZsgyJH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE972C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167786982577.13972.14615877584727515812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10778a3771ca781c07d31177185713e7d79dd08a6db4d8ce29a3c46a09ae4191
Date: Fri, 03 Mar 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677869825
