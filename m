Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4977B2F2A
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB880C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679757726;
	bh=oMnEYtuwDLUuRnUJ5QbvEaixvPyGEQ3F7/EqOxJP0Kg=;
	h=To:Subject:From:Date:From;
	b=A1svooFN+eHQqtL35pmBAsF66gTip+0d1bDSfQyDI59wj5on8m72AxWskTMlfCnJW
	 39cmkiPHLISLpkWeryszUztYOkBB9/3UCQ7/KhhXm6MFyIRgbnzgBAujy+mhiBip6z
	 udOmjazvdXc9yNfp50TfgAmcxAiely15IgmyAMkByiJbLHJDzLlr2i01Ep3I/zeXcc
	 sWIF7vgMclO54Xd+auObk5sMgzyJ/LYINd1rjvlGXNfiKYhAIeChQS8yMCBWwc/bQ6
	 oVKAMDBEMRBa2XPLO+xUhguLhFvCZhP7mxw4Lfsrw9xufMwTiQ62yc/OQ+zJi2L6zH
	 1gc3Zle8LJJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C01C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 15:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167975772578.2920.1710325838081008524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677d0010c6fa01108bd21733505dfb608decc31bae311940a4ed3683edfeec50
Date: Sat, 25 Mar 2023 15:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679757725
