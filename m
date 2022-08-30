Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4D92F46
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD03C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661860853;
	bh=e0IWY2Tzy1i3mwp+i9qjbikNSOBNMkec8cO8bkPO7JU=;
	h=To:Subject:From:Date:From;
	b=gZMbp04LUH1IXKzK65tJU8ZOdMSrON/RTUXBvGEec9Z4xypJe+fE5OzrDj7o5UQLO
	 RdzhXbToGKpnADsw4Czbn7gpezH2tPNM8jCXvMrD+dCbcQEhGHfkAIeNX3VPgdJ0JR
	 2JPJtS5xw0kPozR5FhbL+h0U0QNoBWU8xdbl7riLg2hVDJ7eO3MEQx8cTA2yVhdlf4
	 ViUv7dSyvLl691P7qOxzF5GieSlibB9Wz+KX6XACZlGnOC0ziijbrfXIJNXlfMQC3N
	 E/NFDdG4nYFAMqOIKcxgmTHF/vPf1ugkN11UEAdEKG0vsZjLuo34HJUPSur1ozCJLA
	 qYu5oQlWouW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BB4ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186085333.3865.17854366779623377051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d31b2a094eda10f0e1e1778419bba5aec5aa17146c098a50b8a207c9845f5cf
Date: Tue, 30 Aug 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661860853
