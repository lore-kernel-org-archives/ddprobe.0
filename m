Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0F22F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB01C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661525452;
	bh=5/kHqa7fSGe6UyhA0mW5vK15x2qq3byoLm3YW1YPV+g=;
	h=To:Subject:From:Date:From;
	b=M6vf1pkHYxossDUup/PSQJqj/sbM5urxu7bhQWPdjROfAfZrvkgyVFWYuz2Q3Zplx
	 1/uoTC7mE+2gVelVEmlZ7PKqk8BVWbToc1xA60daAfv4qdneINivIw7oY0fnjShVd/
	 4fXIS5fz3OlY+Yn0d0soJ5uU/8EOHW1K8YWZUywHr3OsBc7uwthFWbtY3diaHE1645
	 pzOPW2l1k+6uGa5srw8dzHIxb3kLA9e0Ame7VCYqIvzi7+a6476S8mBVW69rBVZjZD
	 plHRSf5d+YCjPXbY0bd6kIM04HzDGC6I48rc17Begve9pG/AWk3o8EY3ZQeJLxgLkM
	 8vDT4m1vgn40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6046FECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152545238.8557.8792277296034433894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3894d66cf61a6edac68c2dc00193cd50aa741edc217298b127eff3fd16588038
Date: Fri, 26 Aug 2022 14:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661525452
