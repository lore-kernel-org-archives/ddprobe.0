Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDF47477
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9191FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673530287;
	bh=6bxDLKl++Xl68BdNS9t2/AmmbRy4GuUD69qOtXw4aj4=;
	h=To:Subject:From:Date:From;
	b=BCHdi1UM2z/4heXOY4Z70KgRsghk8IH03fT66jibDDIUCZDdIPk9ibK34fBhQnPlg
	 HvGDSkTveCDwDQeJsvRHeLgvwAFlFW4FjHZGKs3cw853PXk2urzfLicBhxmqsdZ9nY
	 X9epBqcaw7cJMrrCaKOTeFGx8n1jdgeXtUMhUfHQUnjDrMGmRXQx0TvRsqYHOkEAN3
	 AJVPH8Eue1TawmfJO+lSFqmbvyvJr4X1k4zReqikswznWGgPSfblPcGnHCLGCdJSdZ
	 N1XGuJPT84vrTy3UAO3fhDQuyM90Je9miY++dKN60LUgpCcST+y0nPoIYyjC7iTzpr
	 ZgbWgG6dMk3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6E9C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353028741.10830.3369227206500105167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181153c4569e39dc773f54c19f1e01861c6a7eee97a691f68df84696ad4eb190
Date: Thu, 12 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673530287
