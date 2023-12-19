Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1173839AE8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zmp1V1HK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B28C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703008696;
	bh=hWIL7pyx8FmyT1JwWorP0C5ExxeCKZbgXx0yzk6zRAQ=;
	h=To:Subject:From:Date:From;
	b=Zmp1V1HKk8orlw0H/1BZhVPo7pWDPgRhTXdoi2iuZp6WbmRr/giidsdUKGtz9Nf9F
	 40QcaV48ZqRXMRYJdr8EIm2PajJc2AerwP6JF0pXL35zoeq7haTPepzSSheocVNDPM
	 /Z8/iLsfzB8u8G3+eJ0LWiLHBnrH043XmhoXcMki27uf9tGiG3PaQdVb/5bS/lA9hO
	 1hEmKHIB7T8epCvAIR4BnVlN3Qwvzl5g/rlKwkzaXjOdOF4xXmKlDSP3i8DZOoRa/1
	 Nh+5fZrHE8fXczq2PrC0+905Nv41f1TQhS+HHKAn25ixuxeuXsHO0D+TXvmHgp2Mmg
	 J2gprTknDTObw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F64CC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170300869638.6559.7210085516885338761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b840581746d06a0a5872458a7c1bdfaef4fa2b71b364e7821320b584bd1253
Date: Tue, 19 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703008696
