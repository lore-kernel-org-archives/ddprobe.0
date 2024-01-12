Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1797B1B5A9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6EkrzR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FE74C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705079296;
	bh=IKkdOt262ZZe43SwcuwXZd0b9SLd/v98fyC2AQlFLLQ=;
	h=To:Subject:From:Date:From;
	b=d6EkrzR1708aQEL8ufq8j+fZQ/wprxg+oLzLNeV2Q60QCX0nlTDM7G9JvPCc31deB
	 +yU03SYldQpjf56wOJj0tA7bnRI3HeDjuvvdwZesKdSfPvhh6dbDQLrz3ty3Lha9//
	 fVQpAebj1kKgTDHONeJAX37dsfziHjJMO/Tz2o8YL0hSZSPMCgx6ntZtVNOFenYMMP
	 QsMn8IB08EM1TOzwS78rsr50SJYVkSrldufnPqxEcOiYZdvAVjnYd6J2tqw0PDuyhu
	 HeR4uHouH1kppny60kdAY/FaIhtijY/GBvROMMVfr5ex53Sntnngg8BLusqhy+6mof
	 +qxuOQkTM6hGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73965C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170507929645.13275.3243164726847632560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4372c2d0064706e77ffbf992c16b56a77e8b7ecd7444fc7e82e6531571cbd1f
Date: Fri, 12 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705079296
