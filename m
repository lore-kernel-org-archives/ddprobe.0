Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D712F25
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73016C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662316853;
	bh=fOYN2kc5Q5GTWchmr88bp5ZJjvlkARwuiTRJg+SEGDE=;
	h=To:Subject:From:Date:From;
	b=hZl0L6lvm9Nc92AT/aqf4/jjrU/0gqBIGOPapEYzB1MNACRD2mpTKHKVRCKoQIBYI
	 Tes66CfL26Dym44AZvn9Eq5Y56a/GaSe9j/9ngcQIrVn9ny2UvWTBZihO2dkRD7IHm
	 oZFz0BUCPdr3YzbtlBSjJt7hQubQvi6Q5pU5CEInIWkcyJKZN5XWs0VzWJ6ffngte1
	 Qp8Tj1OYCytBcVtcEtkCVU5d/A6joNNorop1a/BMKfhGa4Uu6UNy7YYQ3ded64B5G8
	 s7UvyhJc+MtSvKRgWxV3ILrtCUpUWnkK2/GengEXceID3BZngVlqXVrJBXm9Q+Qjht
	 gf7QgFjXkO7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C5CECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166231685331.25591.11605817365103053643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04389a94ba40dcdc53b26cfb5eb6eaa49488d57e065276b9b03daee7b3ef2658
Date: Sun, 04 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662316853
