Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D67168BE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE905C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687857788;
	bh=wSYTwmuh2ccVxUilPhciRZ/MAjnqY6I+zmLLfLymKoI=;
	h=To:Subject:From:Date:From;
	b=XNRMwdnC8RPemnbU7NgGe4ShGxYp4u8R43TQsX0Ff2rmXnv1TV01x9yxs6w7Zm6y1
	 76DisBthraC+BECf3HDtDNeR5a4pzF++eNgP6UJkmDOY81VSyp295d+ovjNFSQSljL
	 OkqL0Dn8vFTL0RPJhHPyYOKIbPv3RBPZ+A/HmOXHRpb+fv7snlpdfCvusOJIQJ3nMj
	 opWweSbi2Cdsh6TFVtMl+CW2NwVuPA2cWJ3APTekn9Dr/Ya0NnmEmEITMhTE25dZtG
	 FG44Bd+RCM9RnmRefOE+XHcky3PoxHDmWw4gLJ4tT1aKqdEI1SEhqP7KTWXv3yVYI6
	 5zLRW8bZkOfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B657FEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785778873.28899.2268445879543550824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a245f5d3d492efb8085d8763c6bdba651090e8adb79fa2cef9b1873f61f8a0
Date: Tue, 27 Jun 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687857788
