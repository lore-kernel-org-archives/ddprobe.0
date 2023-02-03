Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CB979C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CFBC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675441565;
	bh=wgyadR/+rtSfwHupNYjTLUYPb4iPZXV33vQONN+BVuw=;
	h=To:Subject:From:Date:From;
	b=iRl9N9Y1GGXF1vJ7VSXyNmCZhbiQ6Rwn3MV6v1Ins5UYtRQh9jTwFba2QWa90BxKS
	 U5u1pGo5LbaWTx4OZXACuzxgggv79omCHQNRVzRWNg5cYOobyJ5Q8h5zKT4Q0nBQpa
	 Svxaj2fnqbMWMHlURZeUohXgaEnm2mZ82JTPzs8c2YjOwZO5hJJXlezrcRQMp1+XNi
	 4tngLS3LWGq41hXksdFBEh7AgCZIPRpraji1eCvX5ri9/iFxmrsthZVXJUO8X+PAMl
	 qrbmo7UEIoSOpcC7Mql8rrThlJpywdgpDE9rcl/iUtWePtq1h4FJiUNvuMEtsldrAI
	 eVvW8cjlfpRPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F40C05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544156574.32186.16156846912788650100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf699c155566757cfcdec5beccad5cc0341d551df4e9a98a685ae2ba7626d68
Date: Fri, 03 Feb 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675441565
