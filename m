Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0359ED2E2
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+aBAZ3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFB2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702622896;
	bh=QQr61tynEPIktAtu3IJfqWznV/ZcM+a/yBS35GZus3E=;
	h=To:Subject:From:Date:From;
	b=Y+aBAZ3Jqk5qaxRPQ5ImjLCoHM4vKHwocCx//j2Y+qKH2Katse3F79ytc90lNfGH/
	 kKQvAPL3B40PxLKsw/Yf6HoME6NbM7gYP3p6o4ZFESmRsnzhYctvXE04skITZJ9WwD
	 +4atfCIBmPsVPYvIwCru3mfVHS1E1o2W6pqigCj0j5LcPmYna2ppg3/vScdIERqUzo
	 TlzqGD/e0R60Jjl8gMdu6uVN/ZA8Cpnbkx3WzJLNSqPtfyBvapf142PR2xqGSdkb4i
	 xidwOpqyvkAV5kh8FauUhPMkwUrLvrXRjKv3WYB6orjWrhZSaef/dWyTvUlkJyODed
	 nxJZuL68gsQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F143C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262289638.30323.7649692031215998578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cba71a8d5835e89e3bba33a39e0823ea947c7997d6156c58fda91d225647ef8
Date: Fri, 15 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702622896
