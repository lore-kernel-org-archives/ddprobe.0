Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEADE442C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E040C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661879453;
	bh=c54SCvC5UpH1T32TQma8WtOPBEo+ytvwVEKEh1kTgsY=;
	h=To:Subject:From:Date:From;
	b=cbTuIjkKMyyNCiqXfJ5Spyv8hUCaiP074lit1cpd+OZI3nbdptAfyaTuMXyh51GCJ
	 MeIZihNqPfgPhWl2oBMHdWvrKrabs0YPmUx7CAjJ4E7YovsVRmi9yf725vvtNVNSz8
	 nxTGRftjWD/iYL4x+YVPk1Gb/p8/K2FVWvVagTi/3tF+fT1O4JjanY4glCqwVNtJtw
	 B7G2C6wTQmdhyNWQSE8rxNUMMIs6M9bPlsR210RLdc1CMMNUhHN7j3mH9XZL4PX4gS
	 iEylxzlKXY4OkZ3EQjt8QWuCKL366+6aOVtVa7uA1tpbLybj8Qj9+owDB0rr83S0eJ
	 zQUaU9Pj4/ucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5669EECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187945334.24916.4492701907124388744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbde18ca1aa1344236f8305ee5eef114db316e51e4de0d234b0109fe3d8fe54b
Date: Tue, 30 Aug 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661879453
