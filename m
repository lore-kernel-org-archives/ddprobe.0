Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB6D33E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 20:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E6AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 20:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682455565;
	bh=lSnAtyPdfc11KKS2z6aw/GqRetDsISiJj9FIoS0KAFk=;
	h=To:Subject:From:Date:From;
	b=sFTGkgu0SwO7uMQqqUa+KQHLpXtSIv5jfocxrrq+fTkN85FvQvv8Na2Xl1Or48EJl
	 kT/V0/tEMfh6B58M6u38CEcx4H9Eu56WsQutd60qx3/hQcg88uR1ohH3HoBi0zGtkB
	 GEMfnON7k5UkwwNvXKXYMlDzO4JGnXoQIDwtgnuzLgq+TAz/qLOOC6ucMkXrd/c4Ih
	 G2q0t0DxGKb6B6Ie8YC7/E+lJ8sOEYUsG0m1TMa35YuRn4P4yvlH0T62kS0wrFzHL/
	 YS7jzLm/+9hEUn4geErlvt26Jd7hOatazSLqgPUIh1VTSfzckp1Hc8RHhtMTG8wUmU
	 Viv0dz3I9R+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C722AC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 20:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168245556575.3422.2644364096161027712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1525b2a98ea08a671a1cfc49608bd66784735d688498a34765a834166308ee87
Date: Tue, 25 Apr 2023 20:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682455565
