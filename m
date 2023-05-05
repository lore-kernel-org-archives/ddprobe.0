Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467E78BE0
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 15:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED29BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 15:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683301626;
	bh=pedSZwnJ4VOh7jP1r4x4mRmv3Amf9Kc+fYR4GkipTqI=;
	h=To:Subject:From:Date:From;
	b=qFvmyAoxVGvW0jdNM8O8CLjPAjPnDGBhQj2ZMtgnrO9fNEgHdrfj8K3OJdRrKyjdl
	 GuA7zzPLE3ASP1g91z6wmaHrgKuxgFZHUd/2+5F6aRDvDW49m4jIHgW8fUsvdykPjh
	 9FXct+I8NSiBTmAlMZ1xFyJhKiuFVez99HTqSBIra3O1sqDZk2dooPCFWWDqURKC/u
	 fMfsUvhExLcGH7gE5ayQ1Ydr0YxZX8LWJuEOwX9n3uoFpPb99D4I+SDJ8i0acTagbt
	 tdUDAQYYPtn9Fp0KZxiaWxwbLXhvA1yNpsiC817UFUJ1pd7b4QvCyLSL4yAMyh986E
	 e/RcaKThzFLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4701C77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 15:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168330162586.22041.14935135332729285487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac6941640c5f5a610b305f8589b36ac12e2503fb6372fde0f2e3a7b2d83d17e
Date: Fri, 05 May 2023 15:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683301625
