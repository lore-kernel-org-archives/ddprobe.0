Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A61120FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2830C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691689988;
	bh=JiHs34v+URwwjYLTQDjh5NWMhctrfclA6XmcozspWng=;
	h=To:Subject:From:Date:From;
	b=PZIzHIfctfJiVvX3QXnWEtlp/6bpyuX+0N55oTl48Xf4Dqk+rMUZ+hUaD+OUseCwI
	 XX4lnfv+evoUbITfSC4XTb3UpnIUwZhXkOWCqneNvSpF0vsd+dXSoqPKrNStBPsl20
	 QsA8/fHIOwyiy7cx9cE7KgxEx7Tuj0E676NPQLFbgWQsc9pcnpNsHH/WA3zsrjIZIA
	 OnJ6v/LKHafo126J2K2t/ktwWZNi9XdiylMHRa8zYh9XQ/n/Zl5inJNSsdU9VgzPvf
	 mWJ8Ctdot8xn0LyATxnoIfbP9sK3LVPm9JhVM+xTzhOjrik/sNUEde94SUb50owFjO
	 HTcrrSATmuzHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C22C001DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169168998866.26964.12979251898985443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4291e32662f33d621a9ac4481e25ba27ed05c881ebd3c20bee5177361e5d4f40
Date: Thu, 10 Aug 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691689988
