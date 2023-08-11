Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675A863B1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F83C433CC
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691763188;
	bh=bbH77gyyuq6LyGDaoNFFTcgj2bSQAr5p6fH2oGvmlZA=;
	h=To:Subject:From:Date:From;
	b=pk2F985aAicmwQ45lBJZP7Lm3wECczy9JbO7C+ob0n5FIVpyJ95Nz03bZZQ8+PkbP
	 zsgNpJIbWjJpYP9tinsJ+HU3U5uT6LZLrne3QbzWDGzt/R/lZb42Sxxpw29IzsYaXT
	 oTt2qAblkg/m1bWY5vD/c3sHiMD70s3O9r+1v/i4ko5TV8P1jsjQfmdNy837BRetrp
	 F8LsCQhrRAxeufmClPkHMUZvEct8aEAz0i5Z53Uu20RghLnz4ekVE5XDXn0Mh2zYrf
	 50QmH83WXQNZE89xHIybpphDEiLvNYMyu2mNQOGpKCIoIYqq56fBf/zNWkfEFXK5Ma
	 v56d4ZpxHHkOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC1C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176318869.14805.7039880619482371800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0d341e68787c1ae0cd462964fbeb8019026682dc1a32c346fbcb07dc097daa
Date: Fri, 11 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691763188
