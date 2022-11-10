Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFA036E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D38AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668055854;
	bh=ofUNalY/ZaFvnD1GL11RViEuL3ymzCy6KCbiaSeDiu8=;
	h=To:Subject:From:Date:From;
	b=BB83P7ISgu25827Bq1RLTdNtNsdBNACkzqdDuVrd2ExW+qal/n0OwCbixVWpz7CnP
	 lMQ7ku7wwipIbMIhFwUnOevOJDU3Ub9yhgR6Cl46XIox9u0xQgVkpUCyseF54FDPgB
	 deZqMeHnOtTc6V9Ld5GUrQbBDdkq7KHuHrpjNUHkRKMXMjX2oIydyaAFqnLot9lR/U
	 rqzv8rncSyfeCpSVwTuCAhaDTd8Jyivb4DBHMs0NhD6wFvMPDpEy93N7eaJM+vc+K1
	 ALjMIpRYK6eKHZO7s+FNkwjJEXihCQZyoigwiypje1auX4zZ9TQ6Lpqa5gnOfUkYar
	 bC20dvQV0cuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D734C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805585432.5306.4882747622905070669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6027bbf8306224c72b8994ade59541241cf2e32d164516ac41c986b65e3bb02
Date: Thu, 10 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668055854
