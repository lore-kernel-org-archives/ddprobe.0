Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5961EB22
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720F5C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670233254;
	bh=joMQ6rPTWMbi/00m6kGIvxUadFcvKuWRhqXxqDott2Y=;
	h=To:Subject:From:Date:From;
	b=M61rJj9t+gJ6m77LTQgumqk/5x5GowwI35tk/wgadv0ViiPV7gjGKrwPBnJH2nOEQ
	 eSHifH3gAjkC9N4a0hUTPgj8naGDbpcZ/EwPtT87hXObW5WX1U2aj0FNwfPGHVDbdM
	 5VZ3Pon0LLpQU2noFDcvLNjLdtaOb2R6UCfVq6FT/qWcJwfbnSyXegWAT71tD6sm7W
	 YfM02gcAHD7ORuniPyKlr5Tn5qbhWcYRdg9/hMCgxd4uVmN0NPDPY8ZRBolKoCNmyR
	 qZPnPxg6JmVAaYQW3lODyjULdPASnLeATnrDbNcrfK96CA8hr/ve8ZY8c+8xAbcUCw
	 3BdCMjCm1+C1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5557AC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023325434.9490.14743561511737542742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f308b8ec9cb0935a84076a440fad099f731a025e2f6e1cb2ad5cca7749ef90b
Date: Mon, 05 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670233254
