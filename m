Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4A61FCF
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B275C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661419252;
	bh=IrB9ijgNimKrmXWBv35S+CGFaHLsmhtEnN47CV9ld88=;
	h=To:Subject:From:Date:From;
	b=s/+L9rU6GJbM5NE177pdWzr4SIJsn/wGm/gybJiNAVYF4gYRlSVKQG2mYV34NsUwR
	 p3jJ72CJKE3sa15BDilafh+24KUsLbBWAnaZuhQFHdJPtMUI65Bm7OY4gqLuUpV4VY
	 qtjODqpv+Q1bC65goy/2e9qCpJW+t2n7V5YsCijsfCxutRfzFny+8NavY8oPXPTuB/
	 wlfkBH72HZSQLWFjFsUnkiVCgN6SFg/oryvaDOPz5Ffq5mGzM51DBupRUPOOkNkLi8
	 ft6heU1vdtA7Gi0OFZfCwWQit+lNy0KqZNrtNobEucAxKW3JrBLdSIaMhrddyUvdtw
	 IfOhUxCaDuwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D77C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141925239.28847.4418757230500078915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8ac72aa4bf6926639874a139264e29e599489e804276a7c7e0050f24287a5a
Date: Thu, 25 Aug 2022 09:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661419252
