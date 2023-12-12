Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CB560EEE
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/hs9vE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D6BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702385896;
	bh=1//tt8X9xf/BVPpjj/43rgAAPRjpqLxChLY62dGJ5WI=;
	h=To:Subject:From:Date:From;
	b=p/hs9vE2xyPA9fV+c3AkNAsyrEDjX0osami7U/M2T42issqeQemPLVjwE3nfp1Llj
	 nB8sWbwl+GV3KUeGz5AMcqLVO9ewxTvz1ZcTmpDc4FLbq0ozm1vamRNFp1fUroK10P
	 IVFDfBfuW3OKCNZ4JPH8twAaEiXSFIhMyECSaEQsGD3ztqiivX3+Zn3Kjl14C8ciAl
	 xs8witEAGl5RwSekavOB+y3SchPBVoHoFlPGEZr+xV/Xf0PaVD1bgk4QGyWdp6ZA9O
	 U9HSbHHLDZGX36NySO2Iiz5tv1Q4/Pj/z72T7PjF2mLVNPRCci4942lkY0XOiWITg/
	 /kg2PfNqNQhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAB4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170238589638.22839.1440613408535514486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe75bd57c85f05f403a63d0a3ef09014cfdbe69e2a4778826062e78b07833b9
Date: Tue, 12 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702385896
