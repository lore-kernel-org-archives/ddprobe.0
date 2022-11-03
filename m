Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23837488
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68EFAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667490654;
	bh=oyrkvckw8CbMKUo2Ww+fS6uHrYhxDH2wVXQ9HlSGmdI=;
	h=To:Subject:From:Date:From;
	b=UM8w1GrGhhRuP+ba6KsQFdxoIZ3fGGrRTHO88J3SIEVObtfW7YptDvVMyPrCkEXWE
	 WEsj1nmLlSdx6ZlU+Fo/5whJBxil+xun4Ha8e0m3rGLMqaDRFLhimaPXOS11fQRzPk
	 +XOK8e2RK81dO/nMx7I6iv4Gg4VZbIUI3irW682j6oG93wHv4Pf4GUo2FabO7TtPfl
	 oDnSJteXBfZsOvUXV1yE6zHE/nUsq3Qm61mBfcPp4qcdbCTfsKGbWoNVrBfG4Q6KO6
	 PHiaNkAhlJZJJnbOz9QWqMyHjxc8NMTHeo5emlulNEFmEabTRE+rVzvoKhR4pSkEah
	 JZgZQBPVy2jFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548E5C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166749065433.15349.8150647225915404815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e2f1fcfe2849f851121e0db2c3472cc6c7687872a5dd741d6a43f0ffa91790
Date: Thu, 03 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667490654
