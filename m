Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A370E1FC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09C9BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686407466;
	bh=SCALUDOcafKcgYUDpWXnFaIqQC6drXFRkJGGqmTdcJs=;
	h=To:Subject:From:Date:From;
	b=jHgZ1aG6F1o/pCOW/wxdYcZawrpyi2Iyr9KvvwQV88FBuYdJhObTG3F0OUmeyRBBy
	 KEV2FRMjCAv8XlJJeTc9/r9afL0SW5ydzUXcoM+lIqFhW6H779/RO5TLTylqmzinnz
	 21n/UQsz+/NC69mQAmWpm8blIzp8Gp6i0EapsKCDQVIzPhB3lMInc4KJBA8v82aDsK
	 +4Eohrh7Li53rCVNr3EyOtaxqc91/YV+I31OpDjKoGB5P3mNH3b1kN3XIlYAFXnSg3
	 mF39WFnZLh1itNl8EAhzpoG50Ar1nLq+zLQIzGtLJnY+rORUIHmqK0lbzftPXk3uWb
	 WafQ0Zs2rE/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC84C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640746582.15032.9317750289472950127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defafdce9df9eed8aae4d81d861727399151be437ede9c29fafb271b59bf13b0
Date: Sat, 10 Jun 2023 14:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686407465
