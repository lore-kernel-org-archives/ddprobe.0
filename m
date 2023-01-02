Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC60315B5
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B47C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672620087;
	bh=BxPTlkKXwEc5RnSl8qYucSC9rhvUVlms/5LqTklvrzo=;
	h=To:Subject:From:Date:From;
	b=ZkhQympojp1IgHynaU1x8Noqvn7TPLlm+PGfxzX0c0mkrLtwALSJOvX0oX3N9MFUb
	 pgrlBUMjEWkc6pH/cMlp4AK8l7aNGwFQ+0aT3lXoEgHCQC1cHHW1JD7e6QHoGPxJpc
	 7RaBaHWK6JYj0HbXEreBALpQQjqA+dkbX6E+Fqv8y1Htc77chNqaiVsR0Ks+168L69
	 8E2I3dMeBXx17bKXqM6rxLDSzEJmopHcQ8O6ZvVmM7WGxEfbucKhlL2cIlqcBzjYiB
	 cI33LDZHzqmo8VNj9wffuY55vf7+QbngVg0Ac1H8wbGV/1ejKZCuIVUWxosk87dc7y
	 Yon7P45OB9K/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF70C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262008740.9737.13785117724722785981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53580de6ee55bfca9602c7022cfb234bd0ebee8831271f5a03781ef86927b1d6
Date: Mon, 02 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672620087
