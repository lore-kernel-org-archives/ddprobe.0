Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE141E3DE5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740857934; cv=none; b=bWbBFfG5ghvsCHSbaes0ukeKVPOqnxkv4Mu8hS4RWcmplsnYB5EMuPfn7FCIelF3N0avpegfRphbQ7BtOpJlHlfV0ppnYTQgohDpn8f8qZmefKQbRo+5O083ZNDCLK5LWbPtrFnrDjAEy4Dr9BJff3p9s3PvFI9xEB8Zny1dkpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740857934; c=relaxed/simple;
	bh=gi28vsVJfyHaq6Ii3zOPMe6smc78EWkO8/JfhBZ7n/U=;
	h=To:Subject:From:Message-Id:Date; b=uPPsPYSDVdoRdL4IPs7l+OZvE9vdh2XyDEltXSyJ3QbfbW+M6DIsL9c2IxP/zZZYeC9T4JtK3sfgF0PjhKlB2hEB3fYFvjlZ6sTd+TWWrTHOKVOKBxe5plzDGR6OWXBD5+UZv/ySMbhobsoncvTV2nXPmaVDveL48ySaP5ObDRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw+ngWLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw+ngWLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECB3C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740857933;
	bh=gi28vsVJfyHaq6Ii3zOPMe6smc78EWkO8/JfhBZ7n/U=;
	h=To:Subject:From:Date:From;
	b=sw+ngWLL5vToZVSSXFuP4VzL1sGL5z5Qhunr8nOLL6LI5I6x7ymMJuQQIlD1x2ts6
	 Eb0HecD6UQnCUZuokwMKA9qeZOPvex5+nFkDJFD8e/OLG3Irp/UZUJYGHduZBNsXlM
	 yTa6lsSzGL0J3H6IXLEBoOg5Nf3E1w+innT4Kp6WwckO1PIIl4HT3jWUPF1PSGXAdR
	 Ug8G8yFSZuuIONAOoGpVJmgm4DCwQpRS6t3acHbEVvfit7j/xQ9eB25VJz9CV8twY/
	 2YffzbAEsKTwVbWlFefZ8KKhutHiqtbWpQcqsf6LAyDeQ4oVfPYQqpZ2sbp2CNhwcf
	 JBjEurpBrGo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98961C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085793359.6265.14550493437622701734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717c9d4a3f7a1dae0717ace22bba7ced1907a0671c8dbf125e160cd6615529fc
Date: Sat, 01 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740857933
