Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631E2FBEB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 15:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E01C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691421788;
	bh=SNBeLEvJfoG4oi2PJQl/b3xkxmtv8A3v8Rwc69aVTZ4=;
	h=To:Subject:From:Date:From;
	b=OdcdBHcfSZIrEIoR9Q8Vsc7zRYz6e+PTSuSq7yTvBl095wYEEVmllPz26eBrSFvy7
	 4B/mdmVF6XsIoCAEAA+CKTvtRh6ZqUQc1+vCXsiUN+T7yR88haUhuxlESLqi/dEZHY
	 Bn2IIlCRKuJajkl72pHi0hFH+4/Y5ndHpc+eJkT4uRFcAfdY2kU4f+uwp91Ul40dBA
	 +2B7mBRvhhMhRIGSgKOdwdl1mOpvNOTQyUtnj71i9RnTOjauigMFUTi3KT4j4w44Wd
	 nQLtTaD2ims8hlOfl0I3gQDYwWKy+0c8fwg8c11qAhkMSaictKkJEezts9KFbQenHa
	 w/uXkYBrvdKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E2CC001DB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 15:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169142178873.10142.13382765277207050960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b28b54858acb75d1cad2d804aba342d984d5ad64057e9eb3dd45487a984a69
Date: Mon, 07 Aug 2023 15:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691421788
