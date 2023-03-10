Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5518A23A1
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCB5C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678436105;
	bh=HlC59Aa8nAM5PPWPMUshvI2CeCYKbMmBuMddcQ4zkDo=;
	h=To:Subject:From:Date:From;
	b=uYf8a85bz07zNDUWP7Cox90MYNizIyPq72SRE42aqMovuWSnsFytbC4X8cGiQg1qS
	 b2hgsqQnZHJgV3Ug2gNEo07O1EyDsfpnN1MqGgj1RoHkrAfU7SD/hRZY7d6KyvuBvZ
	 lt0mViZG6iNf/e4KxG1R7ojI8O7/KYqeDdkTv0RzEiL+StuH5kEFye8wgbiZUQmSOC
	 LMAE8BBWxlQgsoskEMIuNmMmDtQtR6S8BkeorTOpsuftouh/p1TNX8NI8ZBizYAjy4
	 5i3cUzGZEb0+p9F78VS25Frx1hHjtaDExdCpglRkbxpgX5D9/toD1NiAKmCClC/6js
	 gL3wJwFnfWeGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAC0C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167843610576.28588.4371328428823360111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e10ce922ebcab5deae7b5d5aebc7358bab5fb3e82ccfbe88bfccef545b30a37
Date: Fri, 10 Mar 2023 08:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678436105
