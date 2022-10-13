Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AD120E8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D35CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665672053;
	bh=X+4kCVMPEFluGkrchuZWCceOkMc8B1WuGDctsAtgz+U=;
	h=To:Subject:From:Date:From;
	b=GUPQk4Rl0m2pUiq/hwJr4twXA/Tk4wBJfMXCJDWkT+oA7Vhn+BMqDMO+XouT6GIQx
	 OgEp9sHfvxahgyNzfD09tO4cpPtUiEh/w+us8ijgbrtOFbWSMhptUZ6BMtrGx+aW06
	 F+1SOQl5kpeMqUcJEasiNNtKm+k0pf7xYt3cN6sR+B107o5M6YCqxhnDItpL7PWZQL
	 19cyp0YGkt3AURWnfv+qxwPi/iENaPTAJ/2yqxm7zCq7PD23nX8mAHipHQWfEe97OS
	 wpa6W7BenHPBlCaIJzLz+lz6ZE2srIpLn99cWvjyvwuh3f8XHBN0wsZ2A861e0pTh3
	 JngPEjN3nN8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539E7C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567205333.23081.10609491051306690521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41183ee2209af76d6ebc50e47639c117c62fabd4114391a3d832a02da3b9df72
Date: Thu, 13 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665672053
