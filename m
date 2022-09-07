Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71D72F4E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5F6C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662543653;
	bh=hbT9RPcogEt+Mb+ULVvWeLswqXlqtsti+0O3HGnS+fI=;
	h=To:Subject:From:Date:From;
	b=AYVaXuNypiQbiWbBcocdo1W3W1i9HJA3U2mXYdtEWc7a2Rp94fMxoBUaXcmEAS47z
	 DdU6Jj85z4JrZ23OxCom+lQdVNggA6b5doOKJ9FPh78md/AQa3e0jLQuSBP2XSO2p8
	 3LLWhfBz0bPJmwb+lLzjP+36hgIiy9ts8IeEjndC36zTI4Pb2maHCVxt4qny4xhlfn
	 nYwB6pCsVuXMrNQl7/FQ3FI0kqAzOhWfCOmuazVw333ajO+EYCAUD2K5RYgZ2su+1m
	 8gLSCcuszwjRF8uewfs8RIPHi+GNSknxS9/pyvanVQex/g+fqnjCDMGtHU+TLPCwwW
	 R9c9h3SIO7mKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ACBC6FA83
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254365334.31654.5686303398771550806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb4e6e84ee7f695e9a81c258db6ec73fd81c46e00845eeb9cfae7b717a7981d
Date: Wed, 07 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662543653
