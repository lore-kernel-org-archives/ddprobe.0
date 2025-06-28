Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401351A7AE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751086794; cv=none; b=hQPYUxyzqQeAPDgcUIW2iq/0Ywa0Qbb6AEMocopNiyV2VCOoMGvdRMgvX1fjiXguDjWmSlboR3LGOL8U1WPjBb8bBeeecPrFBQaTGA58dlrl/clrOCH9oRfxzPY3DWd+hsHkuPOXow/j0NqLHQgARhUjGM9SM4n2bhdQGvk9PbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751086794; c=relaxed/simple;
	bh=iN9/9f9qk41omrVQsPyI/HsNq9jWUBjwl8PRsRwg+YE=;
	h=To:Subject:From:Message-Id:Date; b=hbRjLB4zfGI4CvyXINFTGK1vabwmJEGgS7EnJTugR6SoTxi5kb+dEAPQQaFevpYF5Xkoyc5VMzD42Ml3vGyPLX4phuTs1IlmeUmV+DOEU14IsnY5VHt6DRxrRllq46Mnsi3di7pJeG9zxBuYuWnkL9tHO4RWz7SKA7zs6ybMruw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZazMlQxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZazMlQxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3EEC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751086793;
	bh=iN9/9f9qk41omrVQsPyI/HsNq9jWUBjwl8PRsRwg+YE=;
	h=To:Subject:From:Date:From;
	b=ZazMlQxPJ7LxAphhvQOSqocP5ideuKu6qBYFJaTTR18m1XpQFNXGa5s8fVRd/cbfV
	 zK46Cgt9EdKPhzd3jLvt2VVFGqa4Q1Y1PKDMz8NWzHEyfRis6PxdItMhFBq+39FKCM
	 uQMdiU8bMjlps2uqEA6z//1Lz8bDAgZsU28mn2yE89sQUf+2bXdzdDtDCMRlOeK2Hf
	 Z2w/BFK4yjCfZ5AUYXAYQHTyisxyeidgfC5vAR8gVSZjSU01pkfROpfbCJQYXTGBlt
	 R4PKIm4WnuZpFRqg9qZp05WbVg7rXZ2WQuvbQOgtwjszl9zS3Io+D+YWsG0vVslj6l
	 WKd5nc6KEN8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9AC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108679357.28497.6214432078768677113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd2277e5f48e4cf2b823d84c35680840dc52dcf913661451e69ca28e1036072
Date: Sat, 28 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751086793
