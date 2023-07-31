Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0DD2AB22
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 18:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E2EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690828328;
	bh=DGjSKG2o2yXV5sGnqA1mD7pVhcbferfSYCjPrO6ecyM=;
	h=To:Subject:From:Date:From;
	b=A2ZlSQUAlMOgG4z6xTFrVGruGQAaTAUldtExvb/sOwBjgV8Sg9COWCrfhaLDTR6S5
	 MiFlU5QcgefhRmpp9CAEFkx0B+enuxFdJSKQWJzabpyz80eXknUEcfpLVTBTsHKfjd
	 ELs1eoD1USgPlbq660V9JtYFEgIxnuMWngoxcpdKVA6goLwRe3xKyrVBIwRKXgPU4m
	 gJOa+niXWavzsgyhVaUSVhFGxE6TC8HF60VYc05KNEf3c5l0IC6DCD2V1QyqrkuJY6
	 mLYLhc/LYFSfze01pHjERIHICcbiGVKT7VT9+PmR9iBh97TbWMKoC2LrACjoIxPzyW
	 TS8eUnziiBm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE60BC001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169082832870.3351.8890420097841337968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0659ef4b40604acddd27865d999e0830fc1de27838072df997b2faf986c1018b
Date: Mon, 31 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690828328
