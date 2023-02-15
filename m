Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A9D2E3
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 22:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDBBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 22:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676500745;
	bh=QvTb7nJjcnIVLjTRJj4AacnhkEutpJISqrJ4FgiHPdQ=;
	h=To:Subject:From:Date:From;
	b=hkIuWDxgRBD+N3+/J+gkV+IOfWkmSqqRm1iYJPfGgORifuIgOLFxWnF8FQpCc+sLr
	 02TjIB3/lnwcR5HTP/GXxIbXfYgOVU6u708P/5hJ236/p6esVqJnPpUrkdtrybEzZ0
	 25au9waCn/H4WM9z/U76E/xfEkpqxtoSHDIA6bxXS/tAYGGsz106tdVWZuHHBPYJf3
	 PXKBkNtEuFJSArD6R8I4ZTrvdOtHGVaZO0Ll8k+3GUyIvIQ1mRJuCcxo0VO2W9b/sG
	 kmku58/NzchcyCWIdDbVrf1NwjTQwNpjrc81tPZ/sknjw6+wuqxJf4ETmVUSiD5lk+
	 emohf+7XupqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2465C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 22:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167650074578.12414.473221752965194823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f38c68816b4f3e89228cdcea191d4ac83aaf3d151654711b1e0e456809546cd
Date: Wed, 15 Feb 2023 22:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676500745
