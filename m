Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B52611C8D
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB45DC433C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693218248;
	bh=MYfnkCdb+MxHjnJb/1D9qir1IwPupS6pfDTyL3+mXoI=;
	h=To:Subject:From:Date:From;
	b=Yv4CgqCEuBR4p8IsLu/rfZkSeEwjhc4DDny6p6nDEzu1KJ/v8gYWeaXbEBejfifUK
	 oODUTSW8CG6jjCBo7q5uUWAxlwl6PCsJljLr06zsMHmhr8VBzbNsTv/GciA/kEK/H9
	 6/PyCUuXE7Uufsa7aZwp9OgEDG/0vQSKJ2AdIRJumobIkjDqONM/mEyxMKBznlLqRd
	 1WiCUFL8fRcaY+6N5v161uIi0SbMQh99Z7/v/SpNX4BNDF65S59+j13aWaIJAmpRyw
	 zr8Wlca/MxlnBOrpc25iQjBOy08Rqr87klp8RjqTWd/C/9YDrRxKMiO/nLEhueZN0m
	 6yMS3B4xv9xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE398C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 10:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169321824876.1445.7719564523858536292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a95a5ca829183c26bbc1c46bb536b3e58cd52688abeb14006380da9faca25ed
Date: Mon, 28 Aug 2023 10:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693218248
