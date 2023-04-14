Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3736ADC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1422CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681506786;
	bh=5tcGUwC2srG11FEpNlP1pg01yFtxCgrUmgWzjX2Mevc=;
	h=To:Subject:From:Date:From;
	b=HzltzNQ3Hs8hCRQ4JI1X5jC6wc2KHxKc+azirReJ/5QVvYPsqMBwpmahFpD3LL02Q
	 DSIlcO2KJJOMWgAq3ugSaJhGsite39gWSenWfWW6dfnuZ0vxLj0jfdlFUZD6vPVxUc
	 pZf6U0YxAemtk2R9tsHfYG2K/YkktBfup00tlNgANFgIlEZC2tiYF5+zEGrUzCsvUq
	 aCqRcaucwfzgNCI32qzkUCyiz44pZMhZ7DruOFPBAm3yYYH0hJuQRczJK273C4C3PZ
	 dRwCrj56+epGx7KIXbNr4At8DR2szUdEgEVlux1yT+D9VXbEckHsXCeITPQQNG5VhH
	 lZSHME7Np3EuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC352C77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150678582.4748.1506585741535616155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af2da3bf9120803eb881fc3b311db983033305eeef12f4225ddfb14cc43cf23
Date: Fri, 14 Apr 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681506785
