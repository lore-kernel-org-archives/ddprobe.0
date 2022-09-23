Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBE23C3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCFCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663974653;
	bh=yvmEZn0MwN6hbbQ2HUtIRKLbamMbPQ0xGI6Au9ine9M=;
	h=To:Subject:From:Date:From;
	b=N+Wu5GsW2XnbVDeUIpVFxsEQGVwAlkYY+atOO7PAYxykV7QiYnlCUDT5XCRx8jye1
	 sO0VIHRB6ZezIZS0asQZbskK2RHw98dr/6jmb5pUZGYHuz+77AAPHE3NcXSqs8ndDT
	 7Crwf2Efo/gFU2V2a66tCyEUT4rFNafSqwbp8frkl79GSCUCGvkXAut6dg8StJG38O
	 cKWlpjqdEsQFxYw8s/n0PSxyFHTwODhMJwPqBsazbPv1HIrBQpUXZOIT+GVHvmVVyy
	 5ojlTJteJ7NJKfH4/M3TLtjWJVL1JAx2DbEHtthZPBcyIyYYQoAXacWMeEKZBhQUav
	 vcS1lxUWuAHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51739C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397465331.15662.17421864073539313954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f62b7c39767b10631ae395fddc94a2f625a691eb509db0b1c91903be721ae8a
Date: Fri, 23 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663974653
