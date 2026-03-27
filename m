Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA9637F746
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774641294; cv=none; b=RmILBUGjKr0JfexWXUN1X2PrXn3MWwr0pgdC9EVOuCsqaZAAMgVNuQEbXsyvwH68DUOjlH7Q/U/tyS6sM5JD0SaX1XGC3jm5tocNV/0Eo6jAuxKBSaoNeGZ17jBJe5HKThorAy2J/+K0fx9Vhk4vBNfBb56sgMCuif2L/OsWFNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774641294; c=relaxed/simple;
	bh=gXhnHUTvFyTsZvXZNCfrj/2Gv3ueGN/br/d9vrppqDA=;
	h=To:Subject:From:Message-Id:Date; b=Cuc+7xVa9Os3+ROgHTCKoUxElSpz5TmqfBrXeeMBo9UhfBLxsgStZyKNuW0YCE/VZPSlsT6D/QC/cB0D80t2l0yvU15GbJDgU8N8nQzFR/A1eHsbNMb3mX5a5/S6FCjA0xBZ8fs6vY1+OhKhAdXyXZt1//OICfahM+aP3uhrl+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh2tzDyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh2tzDyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6F1C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774641293;
	bh=gXhnHUTvFyTsZvXZNCfrj/2Gv3ueGN/br/d9vrppqDA=;
	h=To:Subject:From:Date:From;
	b=Nh2tzDyt4y5Vw5Jg308WyWqL3+ueOIiiDoWuZGwYsZLO1HDF3q5v3crhvU8PG2AJ2
	 eiEzE2Bbs7WqXWVHJ2UxaEY0qJQ2iLlfnVZyEf5ClsP2Q9Fy893//Ry0gh5Nh8cMn6
	 /7QvuWmgKZMrKdavZv1KUFp8S7up3IihMA9SHLELpSksgJIbWw2M8s7CYUeXFBYmK+
	 dn1Nz5n7+0mTtXhmviVlbeRt1b823b6BJSWV496RB2YgWYkB7Inltsr1/ziyJOUChY
	 9xRAc0NggmnWtOov+7yYPtCBpNL1C9KrphPVQl0K84G4v6QWfNAxc7hAXf2zJuZbcG
	 78JH+RrLmvhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DC10F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464129361.18664.9242528529121898092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1be5ac96a31e15b5ad99b8f188f6745285dc45b0809a6693a29c2b579b36007
Date: Fri, 27 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774641293
