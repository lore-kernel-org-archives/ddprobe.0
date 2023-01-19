Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6AA2905
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85232C433F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674114087;
	bh=02rJkGreiJ+CbSDQQodcNblGDw9n0Lwx0UcQE8ru3+4=;
	h=To:Subject:From:Date:From;
	b=L1R5ikikVUT9Lrbh82FhYBXkoGYfD16o0ZgfLEX3jhuGjtI16uaDAdTYRlB6gsG8+
	 ljcNr+1OPC8o+CN5q/MsRoDpqpqjv2DGVOu0qZOixQV+HeXSnbhgqqi05+55Nvj59E
	 PGdWv+T90zwZ/Q9HaTpBi6qCO49gRrLXI3/3j0+ubtANhVv9/44yqxqLcDPAoFGslH
	 8IZixQmsDjvcNcCSbbTWnEBezP1otjxZugGRxiYIZJtpn2WwgH+lCh0UxpqFzlxzuh
	 WPzpFICTb4vozfn3A/YVqiom0r7FHV4lYeAAG07dCGOYEp4huA1zGZrfi2H9kSt30A
	 ypwJTEKR29ltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B36C46467
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411408741.25965.9751377574732447016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4c832d47a0822b09d8800e1ea1db042fccb32709a1a6e8f712f71e21812a71
Date: Thu, 19 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674114087
