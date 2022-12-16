Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78AB882E
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8289EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671199887;
	bh=QR/CM34DlEFteSBjMgtM7cJxERwZMBy4xoG45oTrh+4=;
	h=To:Subject:From:Date:From;
	b=ce6TL6MFs1RdOL4Z46B2BTAFlCAHzsJiowsgktXWn+zCeUYbGBQDZn+3PbIW8nuW2
	 zlzY01qWDh4ovuReEIy1ZaUTRb/aHcLGbkTY7yzqg+sNYnPPS9QHe9QUEcwQ7ddUlt
	 1zTyXNV1RWzw9GZgr7W2Um15w0PhtyP6O/mOAGfvxbs5K/nXhNfOB71dtO/0u1mecA
	 lOP25NMT8z8eJiudGzN0h6kS1rBrT+tuYDtZdpxEll5RBK696qEPLwovVGQhZG6lu8
	 cgJgXMTF1LGwlTH+uTgWIVbRVGsLRVeKg4w2JbmZYFppl2YIY3dT2xp/oypv3mw882
	 9h3VubfLPmLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66760C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119988740.22025.4916134252382044284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6fea520f004a45efa6f660d3d3b94792183892ec247d7c08f3789f2cbc17dc
Date: Fri, 16 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671199887
