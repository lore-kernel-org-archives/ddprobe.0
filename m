Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373AD8BE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAB5C4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679393285;
	bh=LKheRYHX+1qpmNEhnSHR2DcyWNPoAUdPHHntPoBLNok=;
	h=To:Subject:From:Date:From;
	b=tiVejum8mlTq5F/dCcisMxy9Fi4YZ8ruPeEhkA++sDkKje0TLDLAxxhMlgkqigeva
	 nY8w24XDZuqy9aLXMFrhZCAT5kNAHChhbaytdYg+QZxH02tBPv3laHsqxqPjhPzLcO
	 StMinqShKrcQB4JYPRn8vyTppvZHUyFRVQ6RtO75Scsk/+Ypx75L2XzRW3Pc+Yyb3K
	 1lXbwlWrr5qwva5dWCquTMpH1OuDI1MyJMu+0ugZCtef0EsQpaJcYuS+HbjfVJflN0
	 f8YiwhMtRfAI5zo/j6e+b2qBhlalljiE9pP/a4vhrdLnGB3VIdKZl/Tf8ph4C9Ir3I
	 fQV8ap7+Z4AJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B669FC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 10:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167939328573.14108.13756802685653208611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b836eb5b87847221ad64660111995d7d41cd974209e8b3d8352ddbba36cb4aa9
Date: Tue, 21 Mar 2023 10:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679393285
