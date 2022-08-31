Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC77833EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DF4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661979053;
	bh=4LyrVcVj08zMIPnVsY/IxueYo21f5XkVzQcMCvmS5BM=;
	h=To:Subject:From:Date:From;
	b=UQwJt9ClL4DuAeYI6MVskMDfPlbZx3NvvcbFq1EbKR1KNqkY9nMuSfoef8FvJaGRy
	 rtvLUE/5+MOBui0fd4/mhBy1sie2SbSi7Sfyvx4pwOlmnxIzBYFTTJ5KzfzVaQreyi
	 iO8gCbdipCWHFd8LgKHDIO/zNssNZXArSIxZ6ShjEw1YMuE7y4SWDLc4Cb/glwD2jE
	 yDDr4y0XuJ1sf8IcqEr3l7mabOvell0ljMM+3z8uqPLh1Z62ZljPSWHcsdIv/GXjHS
	 dR/AsnXBo4GwXsAuDzcnhjMwxhA+CsQ4UcdEN8AhsLVeQPuxFA7kDoVRz4gGNkbhV9
	 /Mwu3sJa3jAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7050AECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197905341.16709.9645642839518110107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d8fbf194863d29260619eb8e32e6cd61f87c5a866703f1487980dcf45cce9b
Date: Wed, 31 Aug 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661979053
