Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B211633FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724C2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665177053;
	bh=Cp8mIyrkW6PLSTHRFo4LDDQqBmHownQTyJ4gLiunhVE=;
	h=To:Subject:From:Date:From;
	b=UqPDi2dD4gnvhafregxiR9xHDlhychDPGtHGzxRdnAhhrTmX2D8d/0uqXJHcbIq3w
	 dfduyyL74PV/paTJem4V0VJEFmBxCDBtfn7rSeww0rW+ivjc21sL8OPD98gCmg7a3g
	 hbeZrUlhflwnzmIf7b/x5tX9wINqGEkNjgJfIoOXE2o//j+INneJnqtyjRrzOhtuSM
	 lFn0oEmbk6At78gKsTi8sfENz6TeDivGZVIi0sI1EXWzH24reQdvVRfcl3P4yQt3vd
	 CP0jR5pp5sM4n1AivojnxLtMsr0iitYlILggI5DI5ozGrE/BlEn7ymS4QOtqI8SkLz
	 vKys+DepXMbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545B7C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517705333.31776.15604590247881002709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121864dcd2b748728f20248b3a2faea6621c7d7d64513ad71d6d57c764c911ce
Date: Fri, 07 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665177053
