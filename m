Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F15314F66
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10F8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689929528;
	bh=jgZcIcaFw1Ln1poFOOMx8CJ+8OLpJm19M1LlkpLmtEs=;
	h=To:Subject:From:Date:From;
	b=WaEdE6IGAAoReWORhdIaeCsqukmZtAXlN+0Pqgi9HVmhWahid5bzNATc7LvvVPrO2
	 NH4DoYDCG3DmbmWscuRrfsmdob2jhQU/HNIcBK287NCIxen5lcHC5m4/FpY9iLK2MR
	 wKsT5AGDKFnpWND4/jQlwT5vPIYhY3uTvXWfIogyiZR8n2RmmEK4g3Zw+qg6ddhX0+
	 pTDW7IYa3fCJuV2VyJD8hnY62nNTerkWg5tQmu+I2QKNHi6VJNleahroTvWMtYibah
	 CtVTofNirkhu8aBzBnemjSNHEA3cB7wpMh+W8fXxdmpeCbfV6BZokQOgj4pYcqr1TQ
	 4K1VF9bZfOdLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B211AEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992952871.560.3858691435845344322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16d708be7bc2d93317ed1132ab2a94be5d4d77c0e53f15343f11437d34b7bc3
Date: Fri, 21 Jul 2023 08:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689929528
