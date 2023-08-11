Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E70219DA
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33A9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691787188;
	bh=Wvx+eQs6loXfwT2d97DPEbSahhMvPJsj82doWqp2cWA=;
	h=To:Subject:From:Date:From;
	b=uXECOsd5GYp0rGQlQ9YiPGjAwQzeDoyw2gH6atO5rs/Xq5LWjHWZ08StKG3H9SnLu
	 gjnlQB6ut/UJ6kUOc0fo1KGRqFG8pfdENtSNPHk3mJYTBcWF0PAGT2OCvsb9/0p6PY
	 lGqVty3I7SH1/N6ZNF0nhaaEBFy3GwgQnv+Y9UG5WfYuq4oes8DKfn3cFsxUjbWtcF
	 v+vHrBnNEhdX203yIJ/me4LD0u+SaUaNTcnsSpVuOYBsyq2cAqzH3+cbJBd3A9vXOt
	 aPqttdfu4dU66mxAs7tP2gaqY3KzOu9xScAB4yTJMBhqw5cIdtMSYrk6UgiyWvaFYZ
	 TTUHJ1cIQFdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A700EC001DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178718867.27588.14042713651567737780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77123afc75d92d4500fcadf04592592301eda0d130adc2448afc904cd822d523
Date: Fri, 11 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691787188
