Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA771363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71351C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664503853;
	bh=QDkWmNNQAIonqpr9+FRJApcsYZsFShh/Mm5TYZf7XtQ=;
	h=To:Subject:From:Date:From;
	b=XIf0zACkelRB8BJXitPsze1Oz8VeQ4pwE2mSMgMU6tUbRKgNEG0YIhd1uISdLrVPJ
	 jdI+7nb+4Cg4k9Fp7zT35G5/AOKx+iAEbS0a38vrQPIdXzVJ0e6+aL/08axgA6Xvc+
	 XgzEzYNI7CA/qZZksUvXC1i485RVoTtSztop46oN/QPX95KY2gfkGd9Dei5KbfX4rd
	 NjLVQja2xeK0g4T7V2b0LOBC4I2iJBGRDHVTW1F2/0vfWemo+PbagQDTiusb8/TWyW
	 6t3gBWXxY0KJKe8psyAFe3iIyLGqWXYm5SXszRf23Hl0nj5aDyOhGk9fVkj42nkYVE
	 nV4co2pCLEZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52321C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450385332.29917.18366511970388229515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db94c210f77b5da6457b1164fbd0686295209bd43a9cabb6f6d1908253a10a51
Date: Fri, 30 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664503853
