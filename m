Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6E18440
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78184C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663784453;
	bh=RCOgQ7GU76nh6LflRkZ0eiB+VkQLgwjFCTMSepXDE3k=;
	h=To:Subject:From:Date:From;
	b=uITemI3VXrbWuSYmrOZdJqmuqWSirp2kJFWzUP3y3BoOsDLJ6zmI2NLT7YYAuTYK3
	 FVm2XA7O/8jlMUaD+UbDxTKF3zanayJsVE0yClMKdGQ9+bDXdlw9NhPo6jhKZItY6h
	 YFwiZfl1LdfpvGR0zfdewLA++PW8GkjEkNTEMrO4u7mSIE/NkOPcQTOZhzhcuOTo6n
	 P9wHbf1JwTjpBszHLmjrpGj2gA8lFHo4zbzwLX7edW30mzAUQTU7eF6qywDk3cG9D6
	 FWb8f+MwXwRFvpiWsZ7nxZQWls3NWzdFP4hkjlWrUDeALkYc91GXBDGiV/n9IlR3ay
	 M977XUEXIIqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E1CC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378445338.17021.496452129087743830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd103af8ce4ec790c32131845220529702ce78759c1fd2b0445c01a414503141
Date: Wed, 21 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663784453
