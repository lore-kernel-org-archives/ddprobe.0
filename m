Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34832F46
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761C9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661862053;
	bh=QeI5Arh0rbYpM4OH3n0puIhIsMCL/D0b1Kdb4rFw7FY=;
	h=To:Subject:From:Date:From;
	b=YIIggU5T+nBf24Gad2PFaBuHMot6XykoumYm0Ifs8vJPGJ1nTAmoiyQxlXSBwltoU
	 2lpwpmG1Njlxh1fwEvBkHElvFHZ3n37fK/9f9nKSIGSlIitEe4ohgaRLh9yvZYfsFV
	 SuYpEmoybNLiUruiIYnsu66CgFd4yBa7xOzawTRoA1t7k3otxlRo7YLC5WKEomAvM5
	 mjRJ68QqJj4nkngmaTCGz9hpAvurRVW8PbN6h+WgNfMzY8UM/SwZhmjA5vL87kKlNZ
	 pnRsw3F1b46JrVNlG3q2nRSppXIdP7AGBA3XlizkqpfaZrBDjCF3ymzN43rSwgkh4t
	 c5Opz1NgIlyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0C1ECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186205336.10829.1659232055188860846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96723fa65394fa0a2bdc06d44278a3e0831430d34a3e01fc172bbd8f7a2dd0d
Date: Tue, 30 Aug 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661862053
