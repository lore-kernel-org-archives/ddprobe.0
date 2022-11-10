Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD2A107A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9F4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668098454;
	bh=V+9WfSD1or+TG9ex+RD9Yjw5OrxmZhQsuMbxV2g7Gik=;
	h=To:Subject:From:Date:From;
	b=jJBBgEMbjFxEeSVGeBlGyvdW4XOAPXMDpMSq0ZNDZhHrfL87zH7byy+asY9Uz3eVU
	 T7lVjOY0Xw1udbhKrVglS5H9fOnOmMYhmMSy4wp0KR9LFp2Uc2w7p17RrGJGRHdkzt
	 9R+hdY5Ja+qezYZVKqInnTq9zZvq2H7pIIC/IT11QFbOt4GRsYzL1XK3xJ2n3VhITa
	 rVY5EB6MKsgNMof3KvsTgeAJ0mgxoEo/v6H+CjnkLBX1qz3JNT5agZICyat9sjm1of
	 pBlMRh2etFd8E4dLUnTipFVmFoYMY3snOvYNbBCcAfSfof6JMt5qQj2wjPEWDxVy8y
	 HpZPgXBvyIQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55663C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809845434.492.13393597874946085101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab5880d1b1c94b5b2a1eaae4108588ffce9cec733859bc1814e2f3a80e020d4
Date: Thu, 10 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668098454
