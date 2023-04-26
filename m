Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBCE538A
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5D6C43442
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682528826;
	bh=SCG13h+bt1hLKESuoPmMpTKh7VBmi3fFt+R7tu3eLB4=;
	h=To:Subject:From:Date:From;
	b=qNwnwaDItDPb270bucFO2KKZ/FSDupNeqAmXXKSHQZwNGrs8Y1ynVeEqtXKeNn8yX
	 +ZSt5AXPWyTJNocLDdRf67NmyWpIodzVW1AFIjjA2a9AJQYazoBmShQ62Wc39CzuKQ
	 ZgqpDcWt8bfgqyVxyK7rKu5Dm9p3sss4ec8PC5gcahutcT/IWXWLdWcAZ8ziP7l89n
	 /hlZimNUn6XNhJZ6y5s0VXp6pzM9ur3yoSzTHD4VldgTOH5UvW2EIYmveesXgpZUYI
	 Op/7bwU/jT/iNSYhKdW7ubIiKLcJ20VF4hUvF1D07KL259DRFfwqQYruqQV+BgmPou
	 5zt5DJ5cL2rsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A88C77B78
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168252882578.16580.24456158990360476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee70e877686dbbda3030eb5be3d0cdd7ec64a3763c0abf0c81550361330d10b
Date: Wed, 26 Apr 2023 17:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682528825
