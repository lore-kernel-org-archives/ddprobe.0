Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37086FBFB
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A80C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683154265;
	bh=ewdsn4gSVhhAJqN4EVj7JZZPJHgUeO5qGYYLWuK2IjU=;
	h=To:Subject:From:Date:From;
	b=JmJQzwLQEHHRLH9oZmL53k5Ks8rsLDM9TUXkkX20uXDKCPNKmwA6kINQmsr3e+6BV
	 fdvK7/wYlTXHHu9waG0dEe4GKKcn5Ca2WJtM+Ff6006Ch/uLa4BAOCotWCDg9N7ZHB
	 cpTaVyVA0O8Fsvw52rNbyGgh6C/6L4pFIBcFQTnvs2oVcUGkK7ftyIDh5TMPcUj87H
	 SNatQnmSiyKBqq98j01DsFd1sw7RGh8WHa8MQHIF0llx8ra8ZDVMWeEJ2pfYxizrYy
	 znLCfPGa2xFW7XsDugSXdmn89hhf/UByNgt1Votym8ZrNdp89KLcQMyabfDyYoJ9kp
	 2rrgz9GxzMy8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B1CC77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315426580.18755.9110140725401804434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577d4b32f18baf010dd258230af98ef19ecbff5285571ff28748e5791abf32e3
Date: Wed, 03 May 2023 22:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683154265
