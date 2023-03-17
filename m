Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2396D19
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A51C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679068265;
	bh=7/JJ1eqZLLUZKI67WZo2reDvRxpkC7H1BWjyGwblJjU=;
	h=To:Subject:From:Date:From;
	b=P7ILMXUbZrg/23gMTVwBYHfSN4TrrDFVR0y6wkNSXiIcx2FsopDFAepP98E/TUv1I
	 MtZ2lyZs/IfHJVjcElq9dqAqYw2thSSC/x6lATtYX5UAcktGfhHt4pRsY/F4UKvw+h
	 5Xq1AKO7Wx2vhMHxWSHB6xRA1SKUhs+pM2dqpHod8dLd/imbvO1Fhlf9ph7AWgh8cr
	 eVu6xr/aFPaF/H5Nvq9QtJHs67IYqPt9kupVHsulGCYiva5iwCzSA00w0JIw6943cn
	 YQzxL3Ci871QJ/cBkAz59+UxzVwsQsXrw2uHsIulAwGvr4EVAXGowu5M7RJtkdJKce
	 k6+KnMWMiXEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF299C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906826577.13790.10405414373662152736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75ab62d53e309645432c76135dd0ce35afcbbb80725a75abc9b131fba8a4d62
Date: Fri, 17 Mar 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679068265
