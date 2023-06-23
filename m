Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1566AAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B9DC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687563188;
	bh=IeA3EOZuFPDamFQEOTDkqQ1NfcEOTnCPQJCPv+7IPZk=;
	h=To:Subject:From:Date:From;
	b=oL2/tz+P+n2v2Oq/KuG/z4EJ13shFRP7fTjiLJ/0GDi4CoIBCk0B+MzBEs2gdS5Jg
	 bc2bPqqwXuJIc4XmUhN02IAEusnY3cNHunABDlQalS0YtIHJLKl0CS1/kTdjzIRf3W
	 ul9RM1c35935r2QHWOrIKb1madNMY5Snijg/zTvYlXOPLvxEPLOpkXEJbCrp4m7zBP
	 SR0j7QL+v0iMpeNAiGHdZBmQjPQ3990XH8I1sPVMWiIN8WJrFMONnEwISXciYxdaA7
	 bhRfZI0dHj+bxMPr+86PGiAKHZTHIjJ+y57KSOW6mh0Os5NqBfH7qdPqFhIaE1nDsm
	 uIEDGnaXr55Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78D1EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756318867.19485.6777931090180375734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7223aacdb6682d3f839be8114f68f434c3bd177d08e790801157d748660c137e
Date: Fri, 23 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687563188
