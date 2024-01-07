Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E11713AD5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqOtTtQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94AA3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704646096;
	bh=xAmDYPP33oe5VHgAYfovCtWXJsS0mYsxzbeiybRZGvg=;
	h=To:Subject:From:Date:From;
	b=KqOtTtQgJ0JDxJCLu7PcOEkAdYU8zjA3lKOzhG9+YvaIlCxYsDBfhtrZ3wr+U16kc
	 fxgURjog4GEelRyxXihsZMnDN3N/nZgfNjqXX4VvBCaBb/gmuhQlLx3nLA92GRCYU9
	 R0lkrLT6dZE8C6N18wsdm1QsOTM+AcAoVXq3yWkyuHewdBsItbY0+Fb08ekruR44rd
	 iDDYzpMWAyi4fRMx8THHDI2WmxF6sXOHR9kNa9p2XASZTk3DMU/lZTiM9LHgBOIhAo
	 T7fyrlQ7iZgkj6oUxBOfRf9i4SwrOPLqocpPOt/ct3doiOjgAGUjs1m9oDQElNKpnk
	 DiyyCkAj+eskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76903C47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170464609643.31356.3079359843405385294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c7ad37e33ec34b1cee925a1b167ce21a94326bbb0ce6b628d901dcc3c41106
Date: Sun, 07 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704646096
