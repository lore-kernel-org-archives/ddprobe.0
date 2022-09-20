Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5F31C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714F8C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663675853;
	bh=XE7YWbGk81tR7q4mPqw5vvOmh7Mc3R2vAekzEvCSTfU=;
	h=To:Subject:From:Date:From;
	b=TDfBYgk/dNVR2O2eIH2zkCow7gOiLMxKm58VC9R2Bk466nmxW079umgFwANPh79uG
	 LwdIT4GcC+Z82g1apuesUoTGer0Z7oqyy8Oj01OiK+nSWvcPqfwiILfi2oTaYpKJWV
	 UMIu/MYncdChES3Y8zbMk/zbBMbvpF05QV0d32jtOe2/2z1WESgITcjcRHZZDze6jG
	 eoSrUtLkQMeQDDE1yOjnC5U36gWK0fPAr1XqcxuKdaCp+6eru/AlOfVRierAXGS19e
	 V/23e3m4ulycAfEMtrqTD2Tk9Vtx/hizbelsfcW961RL4/1Wju9POfrMi9WtTp4M8O
	 ghOzbROz8aGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EC2ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367585334.10122.3820886611805937290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ebfa55b6b9c9491d631d95ff69b180a755a8cda0a6ba8d6b5dc1af7c706ce6
Date: Tue, 20 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663675853
