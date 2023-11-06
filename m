Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3E119C
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N18e3H2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C266C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699231096;
	bh=zUVllEB//nbiwAS8kO0o5fZ7geNa6/WioT3o4dOYTNM=;
	h=To:Subject:From:Date:From;
	b=N18e3H2AJXPlwZbbvv4N/W/iOPHbV7hFNG41Wb+Zkfk/0Wg/WOjbxu7xunsJSE6BX
	 JK7IuVCrXrp70swT+nYmfaylPfo2w9KGjw7xCZxvLuvrq64giz+qyGSO0phOj45jHd
	 YNeD5pwMmtRvKP5OwhzE0f3GzgsnTHZst1qbVmXTWp2XGvPjqnD2lEVIxa2M/ofL8Q
	 UB9M9hcopWmcbm0t1KVnmPeaQEcT6xlRJ3SSbNPoheKppHXke02rO71agvdmUdfWpN
	 5NPVij83qxs78fkUJ9zhh9oQIRjpy6r7VMnmiF5AXXL6X4J0qmVfn8q7phUZuxUyUb
	 BLITBkkhUUH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617F1C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169923109637.10607.15854452259706369498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8f732b21453fbf4993234dc941d2f05a1dfdc7ce33fb7506e2f94715cfeeba
Date: Mon, 06 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699231096
