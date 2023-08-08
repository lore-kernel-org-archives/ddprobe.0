Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4737113AEA
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA73AC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691509988;
	bh=aHSqIYZLjoSzQC8xnB4byFuRXtQeMREomiaX/qiXlwQ=;
	h=To:Subject:From:Date:From;
	b=lqVhTunqU1T5ajkqLAg4YW+vPH3PRUyiLEp8D4yXDwk/zhuJSV/K85sJF1IT+LuFW
	 BBqBvtWGI811ddfmz17S4jSKIkEdImlamlFyWq/J5n/czsnSV8Lx57vYzBXXCCpZJS
	 2Kw1iOWv+x8VHOoY81P3ViIi5E3DuLbOz0PtjA9N7Mus58YH9EoVzGrYtqhg29Ymyw
	 +BU6aRmp7hAzn5tmzrONkQtQKK1C6uu/4e84x+Tjfty+ynHEYuk1cOkCV6i9GMM28j
	 o58LGpZ0EK+z/C8ULVhtAlA2a7gKYne9u+iSa4h0mXSpMcncVSFIPrn9/OnZrrXGiU
	 vjD+HGTsbcwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDD8C001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169150998876.19321.6897418934649878964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74e69bd57410b3002e3b03b80a783e43fd67742bc1b8d80171e6bd028d5c813
Date: Tue, 08 Aug 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691509988
