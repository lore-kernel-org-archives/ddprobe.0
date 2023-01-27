Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D692FB6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CC1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674834785;
	bh=bfmQYSyg866qk5vmSN/n23sD9J4TcmQyOSkqV+EtkJ4=;
	h=To:Subject:From:Date:From;
	b=EWNNsYB6OUAj7ozXNsM7jKrQSlNhzBie2sJvbHhs4nyBNDg7O4TePrcMbeuuYgRrn
	 +xdYLVAYV30cTE+2ZARZeEjfj89KhP6LDz2AeaB1n721AKwTMdszaZSmfru9q+UMhk
	 y/R7S31xSBMKdsuGU4r+Kth6O/ZGzkkjsAZfoV5VDp1FWBclQ1Tayca63/36kFilgd
	 PcVa+bw3KFVOa6nRSwTdlliG9YrRFhNslodA8REu0inlZgOJS6Zr11ghtoYceFbxJG
	 4o/ecnqTd/tblMB8CtAPr2Pex6mWBVjPCyQSlGsybYhoJYUH95L4XamO0PqeJV70+5
	 cl8iVmgkHipiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C1AC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483478578.10881.8757764709565890948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8979245b5e2d184fb0d35d9f3f4a9e5d966dd6c00c16c492bc0ff99229b0db5b
Date: Fri, 27 Jan 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674834785
