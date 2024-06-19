Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8411E87B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718818763; cv=none; b=YopPm2G7+/qRdWuYxyij1AYdalO0TyTtjOwYQjVgWww0HA5skyzmefl/AE6j+6u+JD/vZnLDUQkJt/4bnH+PdjgrsXslJHsWxfNvZsEpuuZvlcIUig/gk26QAFXRVseAms2ayowOxRhWLczH7pLMh2QbHzl5ZO18IOu4vsy5Bjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718818763; c=relaxed/simple;
	bh=9U+o65Gw+pgEGmDI7m5JzGme7afDfscvdKKbMfV/aQs=;
	h=To:Subject:From:Message-Id:Date; b=pCvM+z6ZDedxq9WIdQNDKWxk+NprBVlAPG5PbcsdDQ5T/U1LOznlsqeKHCmQShncwf9CZZJUQ30A//T/2uXBRaweNiBHsLYA7IPuiYzRd6slt8Bt/E+J0cAO4jY1/5OZvXf326vPbG2nQNI84XebEDUEQDv1SFIeX2Lt7ABiIoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA4bjyZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA4bjyZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5AEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718818762;
	bh=9U+o65Gw+pgEGmDI7m5JzGme7afDfscvdKKbMfV/aQs=;
	h=To:Subject:From:Date:From;
	b=NA4bjyZTzHQ7/gaZk+I0lMEROQ/u0s+7FKQtINw4sH1FrItp6SEMmeKoSgnv5keYL
	 CmwcXcBel4fA1d9owjcR2v0j2vQYusjJ9QtzCfHdO5q8B++g0O5ORxUGoyaa1gijib
	 4H+11D5qGYSxYv+eqJQ3M2PBu4ZQ4DoiJ3PdDinNMwlZISgAa5sYg4YF3LhxUk2ONl
	 QonL3rBcn+ThtS5UGKWpd3VGx6Ac9+beRrDJVcUBmOOREfbUmVbi27StRcCHL2B5hh
	 kiDA3kZ24uRLB4iK5REA0UshHw7Dj27tMDrfU/uo48nW4Txdd6XAbtxCPvQP+C3kf1
	 XN7HqjorSsCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C984DC27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881876281.12880.8234432288668315368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262eb6c495a8614389b0ed2915f461a3b7d578923349ea2935e979181cb77d98
Date: Wed, 19 Jun 2024 17:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718818762
