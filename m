Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F4429CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81673C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671721287;
	bh=iJC0ufuFvG2g0v3xA7dm6LQh9f525tcyFp/cADK8JlM=;
	h=To:Subject:From:Date:From;
	b=W+oAE7UkYSyLWUgLAm9hhffMoBCHTKILZWrXzAMmhJAzV4abt/wgWVIIJn5LZCzBc
	 n4z0h/6Gv1Onm4jl2Vqkt7QCIFUXejA15HbxaiUTCRVr+mIA05Wa7wudsoTTg6X1a0
	 mQw7InMwblMN+oC4xjJh7eO6V6E78CTZLWWD/BYMbnY266IMU2gChQgsm6TTMjUP03
	 twG/PCRRn2xH+axqxr/KYEJMao9coqVOQKuhgudZrR+LM31Gpny/235AmaAFDZt5nR
	 7x+GnUKaVRpao1cPS9dkRKUqAcyketkdNaKGtsCwRJzuTRjF5ezUnCtfaPGQmvd/L1
	 iVvxVqkmTIJDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EAEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172128740.27986.7785698092548116793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e78e87e8a7a5ad9c4754bb5dc12fa74c719b451db6f459dc5f9090ffafcacde
Date: Thu, 22 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671721287
