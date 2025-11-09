Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02CA55
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762710594; cv=none; b=sasPI8B86t97Bp3OQfL8yNFELCfixaDqskxMhvahMRWXh3DBKzOA3zVu5yadKF6r34q+4+PruMYNJQhRaQTjMqxGSIdQhSHwA/MxI6XZmN54HmafHW7Z1FZngd0CGzpHg+a/P65vWnVsnmJp0zJJl5g6JRL/76B8Yz3xLORJsI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762710594; c=relaxed/simple;
	bh=HnXddTAT0Z+Yz2zvtV73lMGPip2Efm9L2sJz8srhqaY=;
	h=To:Subject:From:Message-Id:Date; b=m7eEDvamvHlI8D3zP4iweMAq0hmdWZ7IwB4fYRJ1FTK3+7zMdMeYSunxxTRuciK6s2c9INbXPT8i4wSNtIMxbiOcxRELPPLFht3/k8UCek4M+JJWP8VMkyqNSiNUEP2uQ4jkO46oKIykQxWmFD9R74YI9+k9fPOp6yHc2BurUxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM4V+4FV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM4V+4FV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A341EC116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762710593;
	bh=HnXddTAT0Z+Yz2zvtV73lMGPip2Efm9L2sJz8srhqaY=;
	h=To:Subject:From:Date:From;
	b=TM4V+4FVPz2xfeAaffvNVL7KW94LTkH92BINgVcrk0rTlc1trbbO1QDAuOf9JF1YO
	 DuPOEQRWMHukY9HHpJ4vJ3xJSDSD9Wpwt0gdcdcTU4DxVrRWSVHz9m1oBbv0jRNSRu
	 OSgaYEJmfbGK3qLPCr2nQdw9aCuMLDcHTxK4k2dXXZkyuzEeqtZQgyDpzkZC5xnnQY
	 blhH+lJdQrqulpk0H+vtMw1k2gpSX/PXrHGWHsAutUFv1HJvqNyRBL4AuT02Ur9L7G
	 n1lp9y++Hd5JwP38qbXq8cLfKnSGq3/N4qdy9G+3nhcgEQtv/wdQ0uWY7ERKpDHzLv
	 y8B6EeKeug0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E8CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271059360.23814.13299961475739095007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0be0383d445beb07126c1af17e7823b9451a85d5877a636dde218773c42b85
Date: Sun, 09 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762710593
