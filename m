Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503CB63E
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47E6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676613785;
	bh=EMz24MiIgI99oP+ijuu//FFidwYe+7LiwqDcXEozkr8=;
	h=To:Subject:From:Date:From;
	b=GWu+/9UI+O+8eGD1UYi9NryIfPqFsTkRpdH3NOvqmf8pUbM8VW4QTH8lSysFitR4q
	 EJizBNHJIcvs684qsJtUQedRy20RZOf0DGXTcBA7iLKxuiI3Kx7kf1nky7Q1A/AD24
	 0LwR2feeXUpRurdmZYg1Z6Bqz5bo5fkAww3s4y0FBoEUwwvDyUoI94nv5/2XX0EwLo
	 qwmAt7M9DleSRDJxXjFDgYhai4pMXArwaxYYLwTklEnZ+9pE5f6J4RP08Fg76P0gc4
	 P79TchLB3jiltzG4pyQYWRzzZthz52B4QNtgH8/+bzMCdgTqEZrWjsvvUGEwZa8zE2
	 FrEcyWy7lPllQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C049CC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167661378577.23871.2426963982755097559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53802473632cde3b54312c6520bde12e310f21024f7cad25c05546fc11420319
Date: Fri, 17 Feb 2023 06:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676613785
