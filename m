Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887B1371D15
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778369914; cv=none; b=Fex9Qlvv6cifYEpSIkGwx5XFa+5wts4utXMfDzODIkUqxqKDjlyK41TIHCBnGfphmugOCXtqCmCGO8pOxQ4kpaoy9u9DTdqQqJ3q+KvfXbQf9EHSgS5QTsOVtg2jCBKCuh885ibKAu01stNg/CNSsX/5awWgn+myf4mFiZVxxuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778369914; c=relaxed/simple;
	bh=uIJhxAxX/eMI8sUjYxq/WF/wa/CaR5kBFHTSSv07mO8=;
	h=To:Subject:From:Message-Id:Date; b=Bh4w1NLhN/s3H5zOObGh0zNfWrhhqHdIwWSAZ0hAbZyM7aF8tOpwPNFOrCEya/TIUXKKYnYCvGenUG7MU6tIf7qwrl0X3AAFXWIRLTiNyuknksJPGsB+Z35Xpl9QeYUb11u/OUVyKsu4nEZYSLUjyCqUnQumT6nzHYjLphDchEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEJ4mOHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEJ4mOHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D466C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778369914;
	bh=uIJhxAxX/eMI8sUjYxq/WF/wa/CaR5kBFHTSSv07mO8=;
	h=To:Subject:From:Date:From;
	b=bEJ4mOHUsptGIljtXeZI3AIUx3AhfMIc9BRnJSx6Mfnhrht3GgeBF07OV1PnF15Hr
	 Z8pQMkQbNKn8jWFgHbi8CBfnxOL3s6xeRHr4bh0fohiq0bdPEMQG98d7KLLMD0QNLZ
	 1edlfCDOcgEYRLJ/KoBgA8YqAmYpXJAt9blnQAv/xF46ecUHzzdW3mSKJWrbSQcCfW
	 rCk6VPrevev+ojWIjULuUhtlFQpUncEzxGZ+IL6x5GC2MfPPtU/H6RuQKTEQLjAGR1
	 mn0DZZfm8SJc6V6uB9QIiN92ZngjQvoqm+ixfkyV4meSqxj2He8t7h6t+J5+P+0gdh
	 8rHuv+z/lA42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE66CD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836991383.1703.9900758728954596501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ee0c97191a5e30fde089af9819cd75921ff18656445eb29bbaa7e7342128cd
Date: Sat, 09 May 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778369913
