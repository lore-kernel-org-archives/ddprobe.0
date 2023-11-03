Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1436218621
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhHhJzsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F858C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699018696;
	bh=nweNZswEKAM+BqLOOU4EqC1Bc4kUglx+eIUtIm394lA=;
	h=To:Subject:From:Date:From;
	b=EhHhJzsafzEARAWLq8JDV8xk+ESNmZbADnrU9xXJFMLVSQDI6Bm9MxPZ0YBHAg8kM
	 2dFCEMgGizfXlrg1lDp4/nZLHe64OQS46e7UYqqqYXwWlJJEsZOesnYQb7fkP61SJR
	 IS247N8MA3nk6Er/YJssZT0WtZG0BWKCof8bxIbzT7JhajEluXe907gKHFEjWa5fqx
	 p/1GbPwVvJ2XQVWuB1SCa6w0dk9ygJPVaKlnIKWdy1Y3cD2wL6G3PmUIxgYiSYMTPI
	 bCXfxd/Me3pQripPbcoxCJZz4FuAQnQOhu2BRmsARjh7jisqGfCPIot7Cukcht++8G
	 18cDXXDNQcDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A56C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901869641.19479.9694373234965900514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c012e499d315c64b31eab024888af3c3d21fd626ef4e080adc401e899d74e0
Date: Fri, 03 Nov 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699018696
