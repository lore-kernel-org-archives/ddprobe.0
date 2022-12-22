Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59EF2563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C08EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671701487;
	bh=9uHVMMAK8qghWDDMC7FzB3D9o/5Sdzb3rjfxJ6KFYzk=;
	h=To:Subject:From:Date:From;
	b=uaGZE0gqIUAHVBHI7YMo8LVI/NG55CbZIX/buC7MQZl3EEwXjSHOWDc2jVA6A+z35
	 hcARiur6+89s/njXuofTlO1m/DqXDSKBRJB8du+S0mdWEWx4tmYadKV0yiZ5ylyYCm
	 4FByifBEU+1KmIN68ZGDlQvbEtfQyxYtxC/SFijNb4B4JkZxmRAyq0MPr2Hn26nekc
	 Ya/MFCkWWP0n16l22IRkV4/ubeFgNv/ClXIIfKwTNr9ztXm8sB0YS9GCHx7cu39KWW
	 jW3kARMeHjY11zeEyu12aPrt3n0Y9SLEAKlI1R/PSL5KqnrD5npSjcu6V6XcjJb6zu
	 oDnZzP0Zzrdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61888C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170148739.28416.8093392734399904597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed82d5eaf8bf12960d7f6bb9ff511baa5ccd096d028e0b08f8a06cdf184aa098
Date: Thu, 22 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671701487
