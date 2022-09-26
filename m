Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9AB4682
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 657A1C433D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664216453;
	bh=/QE/tbW7gZiB8upIREn10r+KBGS1X0f6Cz9sopbBsqE=;
	h=To:Subject:From:Date:From;
	b=EqArxrmkNqEPMVHq8EGoyy2H3MTlAPE4YxZ/1fGbgmgV3gR+4HVvXiXbdwa9WqNm0
	 W5cU775slzuXf37g4WBW9HZgSHIIfUQsCLMqyyPlmBynnbQprCoV3uymvdqXjyrD9p
	 RQdMlz7f5aQ41ggsvkdF+ymh+g/K+wQoThVNIg/oPBbONjGYKhwqfW17qyRZYxLZLd
	 kOFrqOKYbyOmL8u8EY0IO2NMP+ccSyDxiC97NRJ0Ko8ulYIZnKEDBzESTE8oM68nTB
	 bjrGLYirXl0O185IcFyH3OwOQyb05M8zbbyvpddDfzPBtlgLe8ILdR3HkkJ/2xvkzT
	 2ntA/dBmeoToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5207DC32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421645332.4107.140853833722760967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9bf75ba8e832dd3df7fc77d19f8bc55e35a74b5f47bdefc61ff8934b4e13ca4
Date: Mon, 26 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664216453
