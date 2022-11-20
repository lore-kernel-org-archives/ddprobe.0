Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EC880B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C6AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668977454;
	bh=iNbr4c3dkjea18lKStT1kfvdtpCPutKwMlZ+jjJI7mY=;
	h=To:Subject:From:Date:From;
	b=phxA0EtPRfV59jCEa8j4gppp/9io+sdzK6hWunnMNrMlPFwt3BDt8jyFISYEQeeDw
	 fFC4Y4cFXBrSBnAqohPqTBMhxCsUYmX6/okM13HN0KvV7+5pURRLhhZVOG+e8nr5Zi
	 /oArJfk0xPJ9KZ3+AuNI07iJEZP51I9qOHxaY1f7OIXU/aYyhtjeyiN3WRk1R5mzpc
	 A8Op2b8FNp8FFfgJKS2nSG92XmiqV62I/3kniN+8bDUW8N/EkwfSW7Ku5yfqfMj+KZ
	 h/SydIeAR/yPMn2YHfQdfn7kYbo7l0AdcT4D/uPakJMtKBBG5ZpX1jBOxpjJjlHBnk
	 Ud5AfbvRwKf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53751C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897745433.14143.1901478456151106390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f576db90f55665c9f396cbe4822b36c16b6246adfecc23ef34cb3a0280cb1d
Date: Sun, 20 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668977454
