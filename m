Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13367B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D2EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663054853;
	bh=HWEZkG4ukyA0tW7hplMcRk3yuukqSfWIrRDJzM732Xc=;
	h=To:Subject:From:Date:From;
	b=k4bJH2wffrgAHcBJDyCmLb0Jn67G1lwymPcpCofU5Ce9CgmxLP4m+baxnd79ELXXq
	 cMOIyupxkbzS2KOrDrPu80xczH9WIdO4D4FPTEVQOL+Ubziu5sPl2bbX24bgxVC5c1
	 D1d6w1s8ElMSYravrKT1vYHUBQPuPAW+CviJ4OfzZWnoVyKmWIxAQnVKlKYENU3Xlc
	 TLZK1NhiyZbDZOkeROKdizeMxWXwypaHKEjgFQa4cxr0Sgu5048VYTWgECN8Vb37E1
	 wgnSlW98LzhFqGLjyUyJIiRpOmGntU1Hs+0DxghznUo3+IlNQsoQ3lX7r879gWnLU1
	 pw+1hlV+C6Ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DC78C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305485331.29156.18177450628115707846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a101e16bbb6fa2584ca0611fdce32e8d80030c23ff2bc7accf6b9777d4fd64e4
Date: Tue, 13 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663054853
