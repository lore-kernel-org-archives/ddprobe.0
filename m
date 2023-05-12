Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475D724126
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F29ACC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683904506;
	bh=hIUHemq3TGEtzhqJ1MvAN9iKbyWpku2PVE+Rr53IKfk=;
	h=To:Subject:From:Date:From;
	b=cjJZV41od32M7C7oGDhyeR+hCBKpB6yiyXXVNg8UowrbZV2AOHZ+nxcNKdl/VTodP
	 e2lfxwLoM9A/YXRC6xnR6jXCSRh4Th0HneC4A1+s7r3aG1ZnNHZ+T9FeI7MVZ++j2q
	 3H8t0iPkOlK1sETyPdwWXQQYn7FGltrm+0pZzsbo2ci0MAZi85qCIcawtUBYi1k+AW
	 jYf2kHXIjpPuiTfKOWv2oJLcASAhtehl8soQYYZgWRF+RicD1fQ4iC653hYSa8HFSh
	 qPdFmxKuBD1WarLL3dKTDcLnCKrPe/GwIh4ayyYxGX2uE8OLo4ExOFNWm/oSfGwVor
	 sv4dPDdCUlRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6005C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390450584.22681.6708772518283880677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af02db83c0615c3b6b765ee42a03f90c0dbcc0d97df09fd04c478aab0bdfdd4f
Date: Fri, 12 May 2023 15:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683904505
