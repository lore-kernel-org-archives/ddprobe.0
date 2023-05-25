Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D71EA8B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC66C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685050505;
	bh=ibKoR37Vlju0qd0W6N7B9QRvy9EO+HE5CO5Q+q/8qGw=;
	h=To:Subject:From:Date:From;
	b=kClL5BmcZCKAT2w7WLsM+hBqJJKQutHe6xlV9/K6OymIqH+w822xzQtTqXtCqpwQb
	 wTpu/SkZVrxyUAFUsQMa8M7Lnkk5+nIwzrhZ9FJwEBdWibwWmG2Bq0vHzFb9fTDGnJ
	 S2AbSw18Q1bEee+KaKE7NUcqtPUQ5kjBcfx6mkq+BmTOtzn3OUoE6KQ3LLbzY9Y3nh
	 Z0BMaAU/uHsrKMh7RTT/tNJF8D4dCrREPZExaGVg+KTlX3D/4PcJkxMu/1Th8sgkl8
	 nUnkM/S3Qd1cQngxnpVOKIs2tRs8v962WuU5k8DsNUdVk1DY9XwPjE3YcMUL9zoRqG
	 xaNcis+lOoCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D60C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505050578.5820.14356988830427296349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1d1c3013067b9809b9bbb96156a3ed7d09baacc5b67ec6d713fafd979b8c3a
Date: Thu, 25 May 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685050505
