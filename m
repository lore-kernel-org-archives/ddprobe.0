Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F856AAB
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW7iE69Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A357C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700192296;
	bh=MxYZe90dbx/L0cIWKUyFulcNBsR1LX57+F/Le16CMx4=;
	h=To:Subject:From:Date:From;
	b=uW7iE69Z11Dsf8s8QUDhY8lswE6UyBndIbFcbxTdZypJTxx+6qXSlGzr2m10PTz65
	 Sn945sVyH9ENbqR/L7s8asuBRIk/HFno3VkPZn4ke3B0IA1aXq9vN64S0wLtYjNsom
	 BKJFnBPaJ50B760DMXXamfusHF1wdZe9XYNDMIC2K2aNyWTEjMzDRZS489GlmOekIk
	 j6ORea9yOvXj0k4GooUSP8IrRKRa2xulscuPgEe0jCwtZrnTFQTsxMBlVZNJ6ZIcqi
	 I9m+87U7Og7k+WyC56jdkMXGz24qiC1n6gTZcbNlg2UAIGS2aJm6FYX0TQby7LVBap
	 NSbtI5XwtdKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D224C54E76
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170019229643.5807.8537429460376756305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9281aa316482482f68d7bed5c4b348c1941599a5cf122bdb081a77d01ce862
Date: Fri, 17 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700192296
