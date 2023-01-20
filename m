Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AA333C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1BBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674236525;
	bh=mv4bWJD6cHSIeVbh3ihBE1XKzzK81ujfJNyWhZl3H1U=;
	h=To:Subject:From:Date:From;
	b=lLsPlGvjm6cvx5NVLmvUa295Du17eNKeN6Hckjqfqbed56eQ1ip/8Dx9C83mEMgS6
	 MX/tFSCjyTGhCyZ3E+tZzouERJ2vrTfHXm2ymqKSv1mhS16ngXUk+EONgy5qiPmkpG
	 XSewPZ2tDWilORXYsBI78QxhJZBoD11/1ugKGSr/BREZ94uJEqgeqoCCIb2VNkDB5T
	 uAFwZlXjfsKpwA0yocno+lVe08XKEYeNCrDFqPtMUvgXndAe8d9kE/+XiYTG70R6iF
	 +9zun4aybBE/xmuIMknO5OIxiA/iZNgl3UiAGzR/j7srC78ky3AggW8SvjSK1Bt6rZ
	 rtNsh17/ZvY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06D9C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423652577.12781.13970146776770338785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274a08aa1c63c30bc5b124c46904b97a49bcf5fe6428ce961080ae863ebef9a3
Date: Fri, 20 Jan 2023 17:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674236525
