Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F7411181
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA458C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691418188;
	bh=AC0Ks6M9VXdbADSLV2XO8C3qKWgxeU2y4F1Kzd8O9SU=;
	h=To:Subject:From:Date:From;
	b=f7qGmc8xl5NDYGYj1abpXhxug8al5kgTOt4lH3UE60BjRnrWYjy6cXFWRT1JClFEN
	 wVjWb/7kVxehE7PxLXOW/uqAp/R8hQfwopo+X9RYtpHBU7xj8RwayIL6IGeYLZcaDQ
	 zcBxRTTYca9yWZ0bzbRz1CTLnQ71R8vaCaXHTQtSVdtT6s0Towif6EHvPKepqFRxqG
	 gVKSMl/qu+VBDcRUAJifR3jrJ7PQQ9xZhlrVeJQ951SzOewlqkRwD9FztBFZ64gIHy
	 sW4GySqHUcl73ZiPQvKGsk8cjBpIIcuSEZqvmU5IbZ7z0f1x+TROrWCplaCe+YYUM8
	 lwaoNODF2fY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F07C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169141818873.27327.8051077828439228227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed41e55d404604499ca068bf85efa15b23e0abadaaf26e5ed233c13baf070ac7
Date: Mon, 07 Aug 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691418188
