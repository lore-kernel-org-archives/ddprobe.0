Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4993D365
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJIFMxbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD699C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697165828;
	bh=tSaK/37Nkx2lhRTCnda74HNTySvXl9sb6X1psLVrfpY=;
	h=To:Subject:From:Date:From;
	b=DJIFMxbcdsxb1428cHbFZgMlfirl5FTMyesy7k+4ndPPt7C3dWjqAotQ8YKTDawbZ
	 l5yaTILZVhCWAzVTsxFSomasiHkc1yXADvVGsNI5cum/+ElAb98eKqVE8wJCo3iIOT
	 0/eWt9H6rs7cOi36U/HapuKULeH6uwH9eNIifQpVC5XYXr4EnOsiL0yhp9zZ8krUl8
	 PRusZngkIVYz1saBj6SbAGPpWLEijk97Nol/NAmU/lEq4tEB3upcwX2Jpm7xnttBfZ
	 Qdx9yVQfrfz2X1yvv1dDACbbfxIjl6mf5gZ2Lj9E+EEZ1D6hkOtjjxxUsLDIdun1+z
	 Oeq5Dffat3aTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE451CDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169716582870.14625.10087695900832111407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb07f743f51c688cc2183bae1d844285249086f62ea333a239589860462a588
Date: Fri, 13 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697165828
