Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2441E7E105
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736006754; cv=none; b=fviNP2h5EB53Iy9qLfgRCh+xbtrjoBjJn7c1cGQKxIPLbImT6HSrGB1BUSilmB77H3fEN1ks2NGJXyY1JKl34peA16oCW8l3auSEPJnx1tsdOhMWZRsAgKrUgZ9irzRaU0SpfqBdo8gdRlY+zj3/pLaP1iQHfLg7GwqFxWoJwfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736006754; c=relaxed/simple;
	bh=1eEef7XJUPbTbpTp0Ytm6M/9hXT29NfQd+JESW+u71c=;
	h=To:Subject:From:Message-Id:Date; b=KeZvCr3ibdeutXFHQyFDX/gFOc4i1HhJOTk24SU9iXsyAyya9v0r/lOtRwoVn/aihqI3Lv8pIZ1qFhehENlBtzZvCWc/CncWjVr3FQ1/dz8gikykY/Sg0SpiwqP76io3n3Hg3vUVXHHzLodV7jgvJLdYHdRmGF0ivyFid9Tiyhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF+raUS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF+raUS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A12C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736006753;
	bh=1eEef7XJUPbTbpTp0Ytm6M/9hXT29NfQd+JESW+u71c=;
	h=To:Subject:From:Date:From;
	b=KF+raUS+sZUKH6tdpiMgs5SppF9pS6jlDzIFwJr7nfp1z4TqZRYjaM0CcY/Jr/krm
	 4ci2RG+F4XHxgqsuKXI07X9KAPcJJIuVwrhxwNDHCJGdX755bm3/SWS05jS+pu669h
	 oLJLsJW23I4xUAbSKQ16QVqQcsF7CvkjuLEvYtSoGc8li8rGLJ+svqONb1jFXeDPp+
	 2kLltb8FD/BYydg+r9nrxhAMz7FszxOQ15FkPCb+bVylZuWlzTB2S8aNiI6blFLfXF
	 BYokLa6KmPzRzrL8k07l3f0hECmDXaT4+ieg5VPzbBuMibWKfPDmCJ54vXK+M14yyU
	 xSLJVqwg9BrcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DFE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600675359.517.16316493672644999532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f72c54475582034793d8b58abc8c34be437623a65f29670f64c49072192003
Date: Sat, 04 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736006753
