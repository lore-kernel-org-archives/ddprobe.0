Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C58717A2E3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742551195; cv=none; b=oCI6XmEF+RL3wEMT27fFCBDa3AGc9Qk4qCUQtVY9nNe6yQlZq/vHnjielC4t2j+E41HWX0O9I9YdEMOae3ouCAruDkjGyoMgIhZGN5hVyyRtqhD2Nh6AiftJnODfqI/Fsjew7E6ThK67X3LsFz790+Q/F1NNLWVKGHD7uZWr3fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742551195; c=relaxed/simple;
	bh=BqTWPUEGtAlDPrvaGcg4u2VHBjogCn2P4z32sqWNak8=;
	h=To:Subject:From:Message-Id:Date; b=F4EOKxvuLgjKS5CmU33JdAfCwP1TAgQLjVQBr6R2LYlb9DgL6P/dUAKIvvoc4WqDU7f5XMYCglOme/36JuSHujBMjep9aEPkeq9F/3rPLQSwAbDuRdSfbkfDfhMszuu2OkuZNxs8pu4MNnpIS28SZlR6dpVFMy6MDAzQ7AGri4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KO6iTjAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO6iTjAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C7AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742551193;
	bh=BqTWPUEGtAlDPrvaGcg4u2VHBjogCn2P4z32sqWNak8=;
	h=To:Subject:From:Date:From;
	b=KO6iTjAHCAwM3zK5oRXGGAZGmP/XKS/03wq3/ZLwJ4K4h5E7hKDQ2jSClsxbSS2T5
	 qqwk0/zQZV0dUeI4WoiWAtArdFyJiHbi3Yd2sZfZBKzEoNzgHaevxa/9Cegl1g+daX
	 DWO4vky9AfkSnwSe4vNnTk0bR+CWmTd3sE1/jt+U78l1RRWNCX/SUfCSAKCs8sQ36R
	 jDe2Y08sSfrW67IewStQjpi4uUxJvHoLehapjdbzNUMapjeW7rMpcB5bXiDr80W6Cd
	 QDUjB/QzRQN/kGdzvZ6xxSseM+c4FG3THCasJtTgvD+z6Ydj/P2r7aOwRhOSBOjbmd
	 OiY6Ut/vTbdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4E2C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255119362.17594.10919837044409153511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e754bf5b3016a551931705922f7bea6045122f42d7f95bfe608a517235428ed
Date: Fri, 21 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742551193
