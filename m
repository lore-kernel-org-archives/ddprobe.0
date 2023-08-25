Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD055CAC
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:34:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D24C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692995649;
	bh=Ur0/CW2e+r4VQ33Q9goLSrDSOa4LW1W/n00xxAnkVaY=;
	h=To:Subject:From:Date:From;
	b=DthsxkxE6bcxD6hwpWwLNBpC6R0RX5QPrl4aIS6vEEbTtc7LkAOApznsxDzgJW5e6
	 NJTLYDRFrvN1RP2T/Orhntx5JW7ObIL/EK55CFVRumYQRFjQHo+S+LsC9As1rBS2lR
	 +Ci8ym16sPnbY4uSC3H1gYUpCUKVn+H0yp4A783L2HcI5L60hZNSpkRMqux9uD0H/y
	 btmyxGCsi/NRH6pr8Y+/pGa0LzAqUA9Nv9fsWlh2oLu+v53wbA78rWFuApdN8rwDhf
	 5V/ovp1ZUsYA372iTN3IcmrNbczYK+0+2Ebxduab70mTMxkwSSmmyYbg0T5rlPcml4
	 kgg8UxWMdaaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED4CC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299564870.26927.18158265090490649492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708f97c469254eba9155462be5d64e69562382ead0b6ad6ec625e2d1fa14f0df
Date: Fri, 25 Aug 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692995648
