Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDB11AD41F
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742944794; cv=none; b=GUMG+UZb7kyymTDOiGlKNRvgpo1xyXy19FHuSKhbFjJJ0O+487bMFPQ12QuTM98B9zOEHvBenpxnvAzTqpYVnE958SWf9r7ZTw/gcMkhWycpTOUXON9DyoY1RSS2wPr5g9O0Awqinik0v/vE9e+z6Um3udDK4wadz88rJqc1hRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742944794; c=relaxed/simple;
	bh=m+v56dzL8te5Umxrln4gihP+Ps3607eYarIiniliP/E=;
	h=To:Subject:From:Message-Id:Date; b=a+fp7FP6CnzfMQMQJxOr7BQzD1fYb0d5lLQ5ZhY+91oe3q1XAiiFcBEbSjYOVCNQrOG23AGXspYn1l+/M4mKc+8IUSDU8z2toTPyy6zYBmQGHvlqoQHtEC7Pafgy+lyzk+axlB3HEFC3o6mTDS7E7baTiSMZyQV4jQ1MFZxc5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBNR9kRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBNR9kRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D2EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742944793;
	bh=m+v56dzL8te5Umxrln4gihP+Ps3607eYarIiniliP/E=;
	h=To:Subject:From:Date:From;
	b=BBNR9kRbsy5gdsaonPW3MmURi1SuMJrc/IKWbGXnYi+oYCLbcKtjv1UqJ0lUr/5MB
	 VooT/Z6668VyUxgeUpwig95vMJeSVyqwmJGK26vSiixXRKvuyfkQHNrRNt+HLxslwy
	 Io9woDTaqv2akufw9cxiy8vKmsVxSlOoQjAoYUCLpofECT69qsP6ehsZ2hhtf+u3h5
	 W9bF5/TFiyyfLAMvnwqgmX9+kNeSAjNdHRSg9JHK0T7N5Tt/nvR+YwZvXcVXsVLCC1
	 jcg6QVfMCYvdCtJ+GhCOOkZDz/eol5r72HRM0VP2cDxuWfzJaiM00HTmIKK5f0m3xE
	 1QiIK4uSPIjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CEC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294479359.29479.17336105153426227721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5719a3425488635dde5f5c8c5ddd31ea3c90b37778b2dc501902a2b95dcd3c
Date: Tue, 25 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742944793
