Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C2623AE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65DB4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669279854;
	bh=+nY6k5KBqUlhNZ4FRLgeRi+6Ex6cb2L3CYBU3vO+CTI=;
	h=To:Subject:From:Date:From;
	b=GKihO26DF2CaEDgi8re+9jvIDFCYagcfBFj/8MnvuUcW6yzsvHkjjOVhVEWnegJ0w
	 sGCsFxWKBPGNP78q7CVUxZu7UYgxsFS3AhCEwqAZVVDeoPM++p/yCrQLZ9S/ia8091
	 5YDuM3L+GqQ2QtL0qUBY9o4yP5Z9WDOsRqcZ0qu3ZJat8LeCgFSq1aF+enI9TXg0Rt
	 pG8huRD7KUq0tC59BSPnW0+clB+pTWy5d/q6noaVMtDS91uEtjPBOUfwzj5tR+1Y2+
	 1QnHv+OM7r2+VCsG7yq4DqxYgh9Hq5Er7mHHh2yE5m+sV8PZWWuOSPueueSXHXeWAa
	 BbBxrpHlRfOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2FEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927985431.15106.6451843152121639293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7da2b6e18bb8cee6b8ff00b79aa64f18e653efd4f503ea649c378bedb2b5a2b
Date: Thu, 24 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669279854
