Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2AA2580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80382C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661953253;
	bh=IzdsJGSp8cQBe5ihSc05VDqm3NNUMTo2B+LmgA9i3ss=;
	h=To:Subject:From:Date:From;
	b=VLmlFx8sHeDktK4DbRC8tkTEHp+RxYQn6q3YNs3hk0Ejd34jx/G+a72YdxBsoU4LZ
	 5RWMNJ02pyj2zVhtBs6I6aeg5EPXZ05b6j0NGJ5gIq8g3h65e1QToFk32D1jumkCgl
	 iNjzlcADJ0A7UKt2akfNB/sD3Zs1ybfooMQVOaucqx/Js3tdCRS68ee+lEv7fWyDWr
	 SrJUlDITtkBbdxmEVZ7UUwR5Zj1B9uZiNt2HHqGzt1v4D+zPPbkzbnv/NZtTaQ5AN9
	 0MfrClNt698dPM7wMQUU7jHywTzcptPyUqeayzo77/CKL8TFle9cR9SzGI/ZG5NLmB
	 KAbcJeizwud/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D32ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195325339.3113.8742330827147584320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111643276941b823af76c9739ddf7c191f1621b3d8453c116650b5fee7b7e163
Date: Wed, 31 Aug 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661953253
