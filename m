Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F1B5257
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872FFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673308887;
	bh=FIQPZk4FblTSf6CZf6GK3OKr4HsYMzLEMn3ik+DOwIU=;
	h=To:Subject:From:Date:From;
	b=B6x+Gwhkd0CIPgVBg2YgiKu3Fb2930nPfoBivzgLDRVGrAzHReTW73YLYhdI7qHbc
	 R3uWPdGmccSWV4sh8PFXP9lduDQADdLo2fF0B1gNvMm13bNxkYfnhUqjT27xB5XpGf
	 HLreKwi+xJ0HZCQLdbaPIoZ+nqm0DZKYTVydWGHeH+JmxZISVtdeAHBnkfHfkdTPMN
	 +Ch2kKAvg75OteX3MgwYUqsx9h3yluSou+j9a3nyX9BJraJBp11rqprhwfA+8xd8gm
	 a6rsUk5OmBVwVN2niPvbDKip2zPxuqUGiaCm33M/d9LQCZwhUWCpFUGbm1SyZ697Fv
	 PGC10lT1A1HeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67958C5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330888741.5084.13818430027957069446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f3b6a90d4693162e89c407ff35bca4ff18fa6f4b4531f317d3e3421e9dec4c
Date: Tue, 10 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673308887
