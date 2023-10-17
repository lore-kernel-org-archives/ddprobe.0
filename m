Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458A53F4BA
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 09:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz0PWcSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC43C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697535428;
	bh=063OwEnqO+1Pi2/hDPa8QuObiSnonPmFBOJp74esCEg=;
	h=To:Subject:From:Date:From;
	b=bz0PWcSJ4r726OIsoeHb/VeEtABHb5akpkfmhsgEBCNZr3fJRFD/v9WvmbYlRBcuk
	 h1TXBeCx0Rd4aRnzTML5GeFuSdePzwyXj/9c+vtb/T5zJiiMX/1NcYg1XBXXRTuRmb
	 eTBB95aylNpORc/8SEucRZBGy0WB7wT19sS/O2hU8mlrj1pI21R7pi6wiq/gWG8uDw
	 KGS8YDpvADFGNFOmIDgkys9IXxWLTeh9lT7eAhwBXCrg1N5IA6ptGJEmCoeRO3H6jg
	 4KSIDpHHRHjTcjkK3si9ALCYe2k8nicmxFu6x3qUzl7s3CSN9y8alqUM9EWHhU8DEq
	 wT38gwxTasWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3137CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 09:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169753542866.8746.4841084463834739422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75118cc34014a39176caa2030d433a066f7cd157622218d7fea7ae47d9540dc4
Date: Tue, 17 Oct 2023 09:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697535428
