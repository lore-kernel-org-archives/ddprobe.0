Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294EE2566E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773449694; cv=none; b=nVA7gx36Pc7Dow9KE8qCXVqQjmJWonxaIuzG+CbnGG/kMejuGBiuD88qFlMMaa5uDBh9IcIblBmcQIGWxFY8he+4FdQiKJYFO2GTo4eNi7j34gUBf99sBFcV9poQbe+d842xGLdp2QoPLaKJV3gc2sFePEOHMxGLSjFbRlov62M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773449694; c=relaxed/simple;
	bh=LHwD5+fIywgEGyZ5qrcuHeqhcR4zQLHrsR9CB/SdoQA=;
	h=To:Subject:From:Message-Id:Date; b=mPFkh3gINOnEBrGIxT12hdEdAQTaepy/AFCM0rBNe2T1eP1HF23FpGbQI222fAce72GNt+TF+fWw8ke8wUd82JvLLUfO+AJqhXkx8Qy37C9rXap90uPMZYgvgFwgR8SsQMPfXJfwBRYxKriRqL0GS3GE2cI0cZi0yQE0FZHddkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbSEn5fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbSEn5fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC82C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773449693;
	bh=LHwD5+fIywgEGyZ5qrcuHeqhcR4zQLHrsR9CB/SdoQA=;
	h=To:Subject:From:Date:From;
	b=BbSEn5fB1WsJAJZmTC1/QF+zS7ii8OtPFE4nOWEGYm+1el3A6CamFcGDrD7W5o4El
	 QnVGO4834jejXZB5U3e1Zs5/XQu1G2jRjt/QS9NSGMmrFuR1yI6hWqqMDRM5EZOCdy
	 +BKk4jR4BDHcWy1uAMDqEGWTAXCKfEOirGKB/fHILF49V4Pi0Df6CVNX2ewrLb5kGr
	 g3XWss7b7YSmG8ZScHs/W9z4m2fZD75JBcWHrtiAUF/Xbji9b2kkqanJ29cY5n1wFS
	 X5dTlpSrvMlUYctqDchkiFjisgt5OIVXlrtDYvhy1JK7ztSZ2qjnhUD49Hvr5AcyP5
	 Vzb+JyO7QWVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791D107BCEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344969358.29651.5760900995257563252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60184ef7ea1899560626df67100bcb3d88c88fb629026aec0a57afcd217b4d2
Date: Sat, 14 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773449693
