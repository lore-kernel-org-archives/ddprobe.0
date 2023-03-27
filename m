Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C117468
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D3BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679944985;
	bh=t2GOGOa8rxz5TEdr+oj6D/zOohCg7IoIJDiVk/dcTNc=;
	h=To:Subject:From:Date:From;
	b=A+tqxUyNDz70m8eyirXijwBjT4xy+/2MeF8QViZEsMJKCCSZYZdWVI/DJOJgn7Eju
	 8EFTG9nOlJxlfRPOvvQdrNlOY3G1voHmfOtKfwf8wHVCbvMV8P70a3SzuwyqiNjc6o
	 nmIXm/a70ayrsvgGMYpstiWQq5CFTSL3aV+3+FaBbigc1zEQYyegz08sJHwl0dW3/L
	 fsl2UaSo9AD8cg+nZmcl/26VGnZtCC4I1oqcQZ5O1PMXOmu9YYmN/WRcj9egniQ/MK
	 Z5mVXgeGXKZYLtESfs8OXiaIXrVII80heY4+3iAvQpEmau0ew2b8rZxJPk5JxGcuBH
	 f1YFG2wK/WUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AB8C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994498574.6793.16656342543293521458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c54efc57cd635468842d4f546ffb8acd1e16ea069e0dd4e17e0d3ffb1f461f2
Date: Mon, 27 Mar 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679944985
