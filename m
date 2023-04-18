Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC2015C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EC61C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681794546;
	bh=4/+L4oVABsXunCaU1R6pT2tLyijlpCJpVWns5k1Aw18=;
	h=To:Subject:From:Date:From;
	b=EuJthZh6G0HYXorUDvQ9gt39eB5u5pRbO+/FzV+h5Cmd+2EgdGoPAFoo4yy1Sp5r5
	 brdsEtJoQQM+/2IwQJLleOvPNMb8GPhORsWz0dgBF7i65DbNAvgr34ivJqbBb8sAiW
	 +8DcrnIlmMcojQqceA9Ogqq+S5y1mpH3m9CkykNCnOxxjNBfkRhLft+duKzXWuiTP5
	 n+DQCu5dC+13fOorC9fEJ2EkoT8xcvYgfW6R9C/fx6jgcKfuH1IWA0tbFtAd5sEM9P
	 plcrHHmYwgXyw2gdBwAcIs9QFjkypEiqrMA8bSNs5B9tDbrm9/h9YmtS2ztw88+bSI
	 qKFEC0acgvC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F3EC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179454585.25176.17083753853641606740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfc890909841db943547a2c76435b7f368a810fb0bd2355e562fd985f8db435
Date: Tue, 18 Apr 2023 05:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681794545
