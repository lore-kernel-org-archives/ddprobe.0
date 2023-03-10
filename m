Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A108C957
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E909CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678486505;
	bh=c2AKj1eSsdmrt7l4XrzfLcoWxQOtizx0GTu/fG/2Ddc=;
	h=To:Subject:From:Date:From;
	b=URO/v7WNfHHK3kPEZe9gi0nQY2NgnKoGdZ7w3pu6fA7bkv4cqdL7OXI7fal6hSYMx
	 rc6mTnDzt1AtB5UmmhvDw/e3tlgi4yxQwrxWiq4wT/AfCQEVfumCIFyJpdrcaba+NN
	 hUSgjCxCgaxvGuBU+AKVXbcCibwLcYD9LxuOCvY22ko2zilvPvspHdBhKLusIDAprB
	 3EFEipxNUowUHGs8UsTCYt5k4CxIYvSdvI1YwhoMrzMe7WbDcDuLg4yrsGzTaD2vRw
	 Ct/6uQtWO4fxjG7B8GFbrOb3LamU/00K3G9EAl77FdUfbHwgw+ZP/yx60dd1+GIoJh
	 HxxvTXFcMO8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1257C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167848650577.17215.14772216295677461564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10dd9fceba99686cf7ed14c84193e6135863db36b827458156c105754e4085b8
Date: Fri, 10 Mar 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678486505
