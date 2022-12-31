Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F7115B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90E60C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672461087;
	bh=auMkolamw1uTLmOKnQcNx4md5TfKEqpXI2psr3TaQ9Q=;
	h=To:Subject:From:Date:From;
	b=qyGhrVRxEwxgWVjzqN20XrJ36tvKIRbsdb4RJS3N/TSKpc8a24Rky5cPej2pKonmh
	 sD56Pd3jczu5W2tsTvrvzh0MnIU5nEGa6O2v6RoCIL1tx8UNaE1Bz6J0apl4dt1TZX
	 /siDr9MH+yhcML5AYfmGBY4hWhnILfbIZFbjFF7qbxLswKWlfybUrowW++Ec64sUoD
	 6ckTjmbk/O3LqZwYlGr8+w0dK88JqJ3woAsPVjAA8g01Wq58jYTD7sM9FMrRhbD6ap
	 VN4MK7Ef4i1pOhWxF289uJ8cJstZtikQC5j9q20dPL5vlkCoYNi1DtU3q73b0+atlP
	 nBebPBiw/+EbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71024C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246108744.26987.6566586409337823777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f73aaa3cec01c5e2b7e5aa00ea1b90ba25e49853f09fd205bf876f2f477293
Date: Sat, 31 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672461087
