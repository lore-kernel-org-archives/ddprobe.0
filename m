Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D7A2F32
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B991C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672084287;
	bh=o61AqK90XkEXkk2eiy+4foutB7JQSG1w9Bvsepyh+dw=;
	h=To:Subject:From:Date:From;
	b=TZiR04Fm7Wml6n2k1Rf0sTnP6Z9VpYMFQOPaKhBI7l7lsEFUpaxEDnwpMRcfvF7Xh
	 gSytkInU6nNJhf0MK+aRk5EtjhBGm9s2kvXYa1ieTYywWouv81s8fjL1nuW7j00EkM
	 yi3I9Mh2sRr3ftaEtllVBw+qP+8f49qyMLTpuC7+HvcMkMeGXgDuWykNQfE6NfkWog
	 myTaTghfJ+wvpo4S6+iT448QBiUpU+dKrUnsgWxFGEq8AhxBl3H+T3eaM2p0p4npd3
	 1jyIjD6MO17HQ15sMzvKpcdWFjeZGeu3UEqb2hsNHcyxXAnzh5b1xHJ3ueMtDmCFPx
	 wj2sFPDovjeRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78F35C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208428748.925.18337881261203750538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfef0d391f421cda0bc196415b2a6b7c87471228a999041832265bd4c6613fce
Date: Mon, 26 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672084287
