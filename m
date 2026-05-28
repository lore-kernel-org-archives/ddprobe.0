Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1E63ACEF7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779960154; cv=none; b=e/qnYRuQ05BeTzsYs1v1FWzJMdr3WQpc2/yy+SNK2SdxrQI7RJG3q/lqgRrHNvwxFC25OZbC1skhwzQD+coBvbNx/JvqgmrrBXjZ5hEh6gkuRTyiJQznG14XnUvUwZh++fHzjWojlqxgBSfE/h5JIFzxgCBqB1Xn/wn+JbDcbuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779960154; c=relaxed/simple;
	bh=6oe7ZzOe14NBfxH9Dm7yzud3abI6TEftAwgkEvPKaYs=;
	h=To:Subject:From:Message-Id:Date; b=VOmvBwoM8gynFQiNW/UcqdBHwrMJJObP6ED2k9pdMvRftRhI9/wAlMU4XCY2iVsMPYBVY3uU2+7IWajZh6W61Qvub772D1vajOc9CDHZTg37tcRTpYdsALPYSnDSq2oCgX36djQK3yAhJEYBOKBnJsxVxkMnF5j2DZJFWAfMHlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1TLt6+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1TLt6+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C084EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779960153;
	bh=6oe7ZzOe14NBfxH9Dm7yzud3abI6TEftAwgkEvPKaYs=;
	h=To:Subject:From:Date:From;
	b=l1TLt6+/tLgYv2tfZoznvq60X0BL8IOJarzcykBA/WYSaKC7hLT8tQ405kDT6AzI3
	 UisOj35lWa67ETyN+DphBWVuB7FxDYoKXx9o89yvg454Lh/NwqoFiYFNb/Lnr02ZBi
	 Z+4VdQWthG9VBhy4x5Bu2rUAxiZHzGvGlux9jd/H0ZY10U2Mj1wo5MNN6MZuRXKR4n
	 /mAQsDZFwPb3D8PwEmRCJf5kOitp6L5X7zCh5oWOxbQTpKpLZ9Ii5bzS2xvRhko7Z/
	 PD998i3LRCuK0CTbVhhVcYXNrhNt/1c2BM6wLBQQmGGrbiBhEhiUdM3gn2/rXUxJaK
	 l1Yoyldj2H5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9939CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996015368.8251.15408862684037703853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad099465f0d4bb1c4dd6d4859859693400d3e402868a338dbf715d9dd6941584
Date: Thu, 28 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779960153
