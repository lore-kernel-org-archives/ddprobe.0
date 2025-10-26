Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3952A1DFCE
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761501594; cv=none; b=G6lrfZCSKO+YL/9EmFGAHXkunmEbLd5bC22AuuGFa9e51CRNQNWA84KKNL5/Baxb6k5eg9r23zwZYj0dtBhG/dj0QbaCeTJ3NrxKUH2vUgdCeWXwBG8Zt/FwGt7Bv8m/eY5JeRCMm0G6Aj48BvjidS+QldPTDWlGIhALkRrICWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761501594; c=relaxed/simple;
	bh=S69F5jJjDhG7PAbN2ZmYM6pAX42ZH/seU1NzwAEbdfw=;
	h=To:Subject:From:Message-Id:Date; b=qKvBVQ4wAw9p7j1hUzTTa2WMmB+DISDo3+ty4W45ooDA0Za+G7Higfqy6exzGxupSgL6bmDeywHGyUb5uznS6FgUcG76zgj+nDlQa5rWC44pPc6S+FFSpDWTDX9A9bGb+7lnXC7s4mYU80v8QCWFTp8vcxjezyPPT9t63hGM7wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebVXrnGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebVXrnGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761501593;
	bh=S69F5jJjDhG7PAbN2ZmYM6pAX42ZH/seU1NzwAEbdfw=;
	h=To:Subject:From:Date:From;
	b=ebVXrnGCe4R1aAL6e0cBx53dQmVqsNXLfwo5iachLGByAG14lKshJ6lFItJ10WUfR
	 mvvSt2Y2AxfFimaLhoxlg6PkD88Dn9ZErSXxmInyE+n+zUOgq5OFqS1V4CyyvT+gIp
	 yqpM4TDpOxQcKiXMbaNVqLptWqdjCWdYSu+J4bIrgNec3yPfKr57oVDxsMXl3dxAHp
	 lA3K82Sjd3w4ipKUxtxZB/0iK/rSft5aGVHC5Ww/9V07TNsaGro+Q6wik/FETa/pOK
	 HW73lKoSQM37HUVSUco3X17B5eKAF7gdWGnn7xaAnZzaj9UvVh/V6vfWeXRjlbYsWc
	 vWs5bxNRYSz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E8CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150159357.5321.920880171209755721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16243b71f2744269929f1b023e33194e7097aa858d071019c8af9aa9263035cf
Date: Sun, 26 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761501593
