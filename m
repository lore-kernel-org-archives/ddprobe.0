Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263B9224CC
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx0N5TtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A12DC433C9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704380296;
	bh=0k6LlgPd+MksZXsrfFQPgYVWA3WTHhAXfbLaBiiCf+s=;
	h=To:Subject:From:Date:From;
	b=Fx0N5TtAQjCh8TSPu1dlyy+cCF5c0PB2rnkCauDT2Yy7eRyiCh+v96slWYSCETAnn
	 AOinkyU0XlfnwBwTnDDl8G0Z22Dg93Znf2WBklm5v37Dp0g1lJYNll4PiDzHe7KjU2
	 /yXTE83GPfDqrjIDk/WAHNDwB9AnFGkiOqDQH9dglpwX2RCYN/cnWlWdrCy0dbyyPr
	 32pcjKYJ6knSElb1jexDmHBT20zRwGcawhnu1pALOk2+jmRzvQkFN5TuzT2fhrKeuW
	 O9Rtz/hBPAvI3vjN5YD9+N6YM5um5EEVG9c18xLCb6JJMnHLFXbloAA7+tQnHIi4Su
	 +TuuWbloZMEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A792C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438029642.19688.11487150934901433694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788d59dfc7f82e8649ff3bfecc67fbed3e148e3f924acec3913c460d37ef97fc
Date: Thu, 04 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704380296
