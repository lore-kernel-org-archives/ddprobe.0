Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EA72F35
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED42C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671129687;
	bh=J7o/s+rsNiBM5gHbsaA68gJxP07rE8hi+fgkZZqbAbA=;
	h=To:Subject:From:Date:From;
	b=dYV2iljcOLbW8A6PSDyQK23mQqtgmd+zU+ROh+9Ftm7A5Tk6Vz9WXrLmkBS2nsQtE
	 lBicWi0a6n7dPuXmRBcV/aMk6BvYu45YjSLSt+0iUiJD2vmxY7SheNZKFkf3y1Mc+a
	 9eKKEf20/qMMcK6xUHmakRJVtJClBtaWCBuWoIIIQXLExkNXRf9XODJIRsJl6CBRtT
	 5tr5t4GlzpShAD2CgR0Tr07VL+6FDmeBxhfNrruRhbS/9t7cox3t8t7Q6ESvuYcCzT
	 1KyQ638y8v8NH3hMQtU0EmnhnxDlT8SPBkT0GDf9NPRvyhIWPZjuTQL0eMaBDc4Sdl
	 XweM0NvhBsJ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DAEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112968741.18354.15265261009727789545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bc9c715443a78f9e58d57330c4ea8db24b8648a2abe02102b69730660eb0ec
Date: Thu, 15 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671129687
