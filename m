Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085BE3C6B4
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufUi8MrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5902C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697533028;
	bh=FjUPnhsAe8rHLTOPC6VE5inddwffxSRJ8AWKQY9mb04=;
	h=To:Subject:From:Date:From;
	b=ufUi8MrU9Hq+wM7gr2U/nLPQtLYJI7PUwOh2dg9C6sqrzAdN1uX1yKWkuoP3c/lg+
	 +E+XG4xH7dvH97wOaf/KSeIZjtPF08y/LwUfYtCzHLehRybWltPaZZSixzHOSI4Q7/
	 J/1xEfE3ZsoeV08cWVTqcv5h6MZhnIwLgHMbzD0FfqnmIb6geFT7Wwk6YzasjflKbY
	 ZQl0dziR6VjNCfIA8pAizcOiDgHDLrEZUGKQqLmhm3Jq1lhg4vepM7ne8Ph4AE3mMo
	 Z3BcNwWIH8Ldikp56+Un0ygD/wu+pXCwLYTknRRCa89S+sXbL6OFzfSTSB5ucGctIF
	 3S/GvQr6n3ScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D9FCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169753302866.1946.17406539845114616062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452a7782e8d938d9397035b8299f7dd6f4fbb70251ebe4c77b54f201d608835b
Date: Tue, 17 Oct 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697533028
