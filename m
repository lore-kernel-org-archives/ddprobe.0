Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706716116
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 145F9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675720566;
	bh=2sQyTtYTmOTFiJMvFwvUUpeKtziLs/wbzldn5c3UmxM=;
	h=To:Subject:From:Date:From;
	b=h52SYDGc3Sg3jZkiMx56yWdmbi64dOJLe8wVVG86JizwfQ9RnAcxTJSJPeX6MEY3V
	 aMp30Q5Bh50K+/AFWydIpbvGwh8QHd1+pULnAU15kXfsYhs3G/DBzuX9FN+RNF8v7E
	 sEXFXClbZTrgPMukiRZ+7z2Xn2eQv2dzQy8UDBaW+rEQR1QskQ6iCTNy0B/JI8p0Gz
	 qFJDwIfXw8nMjWdVg4ceu9Y0WYPZuRYqzDi94imHq8/eGjWHndm/pYKZq6YDJHLap5
	 h6Jx4jjvfOkA61ocKZjxxwaL/CH3ZtWaMLi/P6893BWUo9VhwGMlQBObSEF7lBHF6y
	 YmOv7Ol5FIVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F09FCC05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167572056596.29239.1516331212131316518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5954f1dd22f4609f2b885d6f2082c3b03a2e9e2cd52a3e42ef49032162cea55
Date: Mon, 06 Feb 2023 21:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675720565
