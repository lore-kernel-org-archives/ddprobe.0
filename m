Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A18EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77780C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662808853;
	bh=lIe6cFmRnm7r9vyZ5KAjP46lYdBLV5/LdBtFai1j5dE=;
	h=To:Subject:From:Date:From;
	b=k4Us1Kj9KgawgI7hMyQ2uX07bUc4Ec3s8r5rTubLivDwJHJccSnHMqMIovVFHWpuY
	 ZR7zwiiDjwyZwrTbPkntu+inBLkK+wMWwZqYFYcECn/c12hL2oNbfh3QxOk2kLo4oI
	 laOieuXhumiB7hEBNsby304R/MVPTbKoNoFBWdapZU7VE1+il9XY3XSx1kCTuVR/0Q
	 CINDvSxLyXknRNPHTYMGfvVF8uRroWcCrxB3uCgNmH5bB9nq3VSH5HSzJUvXGnzwsw
	 NdldHhGOlx5OKkUE/+qhSdyNIYTdMUiFu2Uy9WFBcX5qajHMOf1cxsnWmdF4yeNGCE
	 5QfJ4bRC+25eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58566C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280885334.25617.14314426773965476971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f5680a67eae86203c2584b26ba7d7c637026089841a7ed86eb8409068f8cca
Date: Sat, 10 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662808853
