Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330C71642B
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA9EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 20:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684788785;
	bh=JzFCrAH8fWSyO0P3zqXsWoVSDNcsl8eZW2zUpAo8heM=;
	h=To:Subject:From:Date:From;
	b=hX+EtSuB3KFABBCAyfUf3wbg88sQk1O/AsOM/KKW2L8TSDTSTAklGiHdCn7zhxzSH
	 DlRRsGm2cm5kIPec+wxvWVPg7+yiJcTAizl9xrSPStzQ3rDDaPh+tIiHv/kqu94UQU
	 iQ5p7HTXr8Jrdmb1MGICcHDZVhzmQdQcunG/z+rW7mw74KRWuVA79le8zVewczilUn
	 tKqLI/9oGC6NlcMZQbnHNHLrwUpmT6UcuNkYz4Y+mgN8lh03RF8iR9sdK6OmeUi/Ix
	 RB8ZmVpe6uJN2Q75F8DXesYGQThMoGxn9NHKIgx8J38IXiv5Egt9ASlVUkycleJXqe
	 BQ5edwQP5ZL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF72EC77B73
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 20:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168478878577.26359.9381988246589976542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfa935623d224ce7b59e8fae6cff857936a0f2254c46294cb1dc4f9a8212e85
Date: Mon, 22 May 2023 20:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684788785
