Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99E01105
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80056C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672286487;
	bh=nQSVKPnSoxCD8X98y+OIsyvv1537oAsnuU5xvdqY+I4=;
	h=To:Subject:From:Date:From;
	b=LWV0n9SbCWii2g51NnmlHFiqCwq+fmHf5+4lDrmTfDPUMq07x+BctuPrztW7lAO4j
	 AaTxE5nmfYFXV1abPhxYQN5eguZK8GxHAXkBRKWXBAE+ERgmVXj3irIk/GQ6piCEz/
	 3HuvMr5usve51ThxvQfiRkZUW9vxgSMsGSKpsNz99VHS0dP0cblulwZGQg45ymn9ml
	 /qyJ0/E2Yc9DAQmM9CZVv7b7fNov6nGXUDTXaO+WQVFz1ie4lincXp0MX4a0ZZZbkH
	 A9h6PHZVrqpYuhGfSTOI+UCZB+Cz6AbQRCKBYIRZBzt+qgiDGTRHjviwGvrg/1toS+
	 CBHyGSDTRUFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FEDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228648741.5422.10153591937667873192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819507f348c9ae49dcd8ca89fd7a3f4c3b63ad668894aa34eb64af9c5296da50
Date: Thu, 29 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672286487
