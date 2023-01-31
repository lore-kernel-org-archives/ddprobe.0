Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409CA373
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 01:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4888C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 01:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675128785;
	bh=i2vUcrsC0nBCChdyE0fC5npHTlWrpK4G4bIGoGYauu4=;
	h=To:Subject:From:Date:From;
	b=KjqxiGubXqihmfcAfgpEZQ3hAMJpq+2vE1enVj5eT2UeFAGMnsght3JSM+sLGB+bG
	 6DMCH7a+ssq9PaF6sVj3+8ojiUPs4jlex2LZAMYCO/2rmoZ4lwkvszdyj5lQK/TZ62
	 WRhLM0a+O+jYtOcBuyJwnl8XhK9cKw/17DZ6FRF+tm2YxPS5D0sMw4upZm8g0Htazd
	 gxex8mt21zKvFUcSy5YMt+g6Rg9vGQPLVMQJHQOA/n358PcuYxlTpFyJC2pRUaEsUA
	 hu/kPYdJPchNOuPrvkGqnMxh3j5VMmuXityq+NyziVsjlccjj6dp6wr0BqrUdPDEBo
	 B3zXRY+rBfE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CC9C636D3
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 01:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167512878580.17960.15325115500257059117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4c37e485151733085070f8621272926bba69efc74f9f43bd77ae26bb7e8e5c
Date: Tue, 31 Jan 2023 01:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675128785
