Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C031C740
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 10:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC09C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683799445;
	bh=Fk5z1RKu6nNdk8OI/5L2vMBcHjba6LMiiOqX2+Kc+tg=;
	h=To:Subject:From:Date:From;
	b=mnVR3yJvMioMm8vC11G4k9F7a2CaIu9cvUQUo0Aq0mEYHlyS+DcEbMvHHT6iO9G88
	 uf79ZYHNk8T3aUP0WOSxNnVNrbYYtMKPVuPsIFltaKSIG2OukjiYi3TVPmUxSFoliZ
	 XgLEc2t7t727+wNKDMeBf/T6jU7eyKw0I1w8Tyjgmm+YOYEM82twQYpZ5iHrsIA3DY
	 KgB8L2fTg2EM3adCAT+ndTMkLgwzJmhZTLLS2HhbOz+SrNW+0z7SSPeOfpWjxolvxK
	 ZGAPXqwKeT64p8KmGdrh2udyeW8+yhJDv64nZf9G/7Zl9sV622J/12RRDFQM4E5ugg
	 PiSPTeSYhHO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB7AC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 10:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379944576.20440.10211251934211595501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598b956da1ec28aa62e329f137d439cfb52f1e5046f3c37b88888f370108e275
Date: Thu, 11 May 2023 10:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683799445
