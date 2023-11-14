Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325EC405ED
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaWpHnAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F15C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699973896;
	bh=4ajZc3cagHw4+PJZQF1m42rXyMoYfzoATeZ9RLZVoU8=;
	h=To:Subject:From:Date:From;
	b=BaWpHnAW+AngWqZ24bqQFVdyY74GC199LI+684/TckFre+9QOs5z5qdqUP4L9IzGH
	 9W2dm2ckwJDRnKmEWj4Kp3Lb5V1g1Y1lJ+80Rx2C7VTU41mt7RvO9GZp3Sok8EyX4W
	 P8raQFSDgoEmqABKSkd3YD/bj/AhFMUyL1HhqMZreK9Oq35hiLF3LEFEMAJKvnXNPI
	 Zl36XZTsIjl2jzNC3munIvRiyMpcQpt+T3+42u4ucDC7BPygwcMOmemawpuUrUt0Us
	 IhxR1p6A+5YbvKIpyUhEeBDNgpt9+G7NjN+f/s079sEXBOKBOrLpPArmP9gsaG+LlI
	 0KSwXzVEK7BhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DFDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997389648.18519.12809174377865818149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95ec3ed6d8c03a11f9385a71b7caf4b9fe2b138d0bdbc729601443b8489d0a7
Date: Tue, 14 Nov 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699973896
