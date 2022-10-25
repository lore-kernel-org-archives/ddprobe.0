Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B24800
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69EE7C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666671653;
	bh=Xv3GGGOF9km668OGnScP8lo3ipwY5IWB83x7BSn+R4E=;
	h=To:Subject:From:Date:From;
	b=KDmyw8flpcbkhBfeRhZLXBhv4kEvsnvUc/p4KfmoGA1q3r2XT70bSHpY2nwc0zVVJ
	 mN/p3AhgIVOOFc306maLtVJzQTVUQsbh1FEgJ8bOjG0t6/K29dytB+jke/IvXJCJyD
	 yUo0XBd2c4kr0XWwXukxEiYgOucDWcvgSwy9iV+8GWTWTqOlLy2mpJBm1NN+I2mACy
	 u9S+46aHS0swZSy4tKp2+qsXFw8MKqJxGaNhb+8jbgWQLa1MQEFw+YKLFBts0O5+fJ
	 vPW2zuUtWfryXOuzDatfOXs6dNENlSzT3HJq+/yOMIY2QAgY688VU9ijI1qyfxW1XA
	 t8eY98iWwzMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BE7FA3743
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667165333.31363.3005227346549489899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50663407504757e0c81d76f99f9e7284c55dbc8d6507f66d8afc9570ccbd4914
Date: Tue, 25 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666671653
