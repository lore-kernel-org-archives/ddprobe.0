Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687CA2100
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF6DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692257588;
	bh=akozWS3ftpmwBEap77nYowK1BkXod3CUPPuz7tPECE4=;
	h=To:Subject:From:Date:From;
	b=dPlA7+BOTIePxtKAH2iXIr+RI5u7EJWBYWYqd/YkCAHrGBPejVGgwHBawoY3dCdYL
	 qassYb9f/ltcJGZq+fWfOGo1Tz4hx5IjZLZGLIHA8zPYmJcp5mqVcXNnhnhIF4kz0a
	 pZ+OknBo4XHe5KizIiff2dHfClWJe/GLmnlWMRO79HPV1dhOAuc3pb+wc2BimfKlRX
	 g16EZbesJTqc/NXc8d2G/K2SZPxnfVPJMmeY6dy2tUijRZ9kPBcudmwk5KQ+ieitpH
	 6X0oMMiJjg+ODbT8hXsWaySgAm08B1YKFBJd/Tc7N1M94eHnqsgRqo30AbcgEbsBDK
	 fqyt+B3XHCYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC280C27C7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225758869.10164.753941929658626875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ea42c63103e06509ad6cc35ec7573f7ff9fac7d39ddf74b442d4db5efda173
Date: Thu, 17 Aug 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692257588
