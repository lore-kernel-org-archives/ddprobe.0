Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39F82F3F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B070C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669156854;
	bh=kEBXoBDtTWojo1yUwoFXCVkZ2DsTMjdTx31vWci8ors=;
	h=To:Subject:From:Date:From;
	b=jD7Mu/ZhFbCERGPZvS2c68iO7hfBmr+YNyYaVrbhbuzNfjoQlg7rimeftx8vv3dzT
	 WXkqI+7ZjE4tkF6/oaZOlHE37h9+DYi/MCMhGVQOrla+ugMwCuldGI3cLZZe0WwZYm
	 b0hbraPCvxrqwHxxGrJku5JscrAYIdX3gnqSQ50W/uN0tx/21QGHhOAI0XYxpuO2JB
	 C0Ho2K+GrMsIZEQuj5rIifj8T7BFDwh1IvWhnyv3LtL0CEaaMYsGITeR//srv64qL9
	 C9cOiTcZK7QZ+jEzs1St+1qKVB5YyZIe4HO4dZ3WvrlrnFzqfAd+WP+GAIPTSYvDQP
	 wBCehQSl3OJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55390C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915685433.19732.4872536979657246986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339dee65572410b946b8025baaad496f9e1c7c90cc0793652cd880ca370f3f0e
Date: Tue, 22 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669156854
