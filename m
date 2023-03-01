Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299AD10EE
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE4CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677666365;
	bh=+Ynec/4oAFzWws1qa8jNosv3EC0v1Ia5aYJ+i1ul1J8=;
	h=To:Subject:From:Date:From;
	b=lb4ANfBQ8+kizVV8Epb9pFoesOSekFdfkXeFCF4Vr6dOvMI3Qk9ciaoPIotgGdRel
	 ukn7ykeTWt043wIIumv1Ryxqo8oFCW7hdbF4fV93rMrh7Ej6xWhjVfEjaV8Cc74fwC
	 ZthRxTHOeR69oYc3HhxwilXDtYqUSem7NrUPaxqIvU7kTmdB/ZFBpvhOG5xMf/aqr/
	 M+WvyHQ6cfhYFf2tzs/1mGgZ+mNJrmQYpoZy7wiHSZUXoUksswil0U8mnRWxEXtufV
	 qt6zlAb4P4VEYxrIlzV2rAjDebjqJ8XhDUT7f63FUSCNgwStt1jZtzb8+Or9gDs7Kj
	 RRCx/XM5ohyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39ABC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167766636572.10571.18437236846043835562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a837bb061f08dd141dd55aaa883523b65d89f513532bf127528b97f2d1147c42
Date: Wed, 01 Mar 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677666365
