Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4D3163
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C75EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672445487;
	bh=dbje4T6z0u7jKK0M7h2xb5cfXJ/2cqh7Bcs9lNmvOSQ=;
	h=To:Subject:From:Date:From;
	b=K2b7Ose6RspeB8XRCXxAb459LTsSJv46+j6J8XCKJea73eyO4VF3FKBaBqRXcQMbt
	 ojOQGiPUv9rV5uSBIDw2noBTFl0EXXjoQt1mW05HbCYYm49D93CpUPvIkrT5JLN9Og
	 RorJs0pDAlRWOZpRqm76R7XukT6eYPcb0QT0cMJ0RLbdDbOenw1y4R7NVnw8ufe+rF
	 oW7jqxXJhz9cxeq4+QCFIjA+UeqWP+OzWWvSfLbci1K9NxvFI9Nf6HCquYhxcVfCBW
	 xufiT+rFq804KesFPYTZrR14am9kkLA+KIjIK8fe9jhCvkVaUF4Q8bRQsZm+5psZyn
	 TcfpsK5Xi+GPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CF0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244548739.917.1720154700777612882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec6d2c2c79b8d12f777772d0b472ab4b24ffbb96fd130833806b23e2ac2ac4d
Date: Sat, 31 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672445487
