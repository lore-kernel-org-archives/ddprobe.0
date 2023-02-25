Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F7D31A
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AEBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677303305;
	bh=rdQ6d9uh1l0myyZ/GLR1VSNRj0mHLEx69Sd7Z4L5Fes=;
	h=To:Subject:From:Date:From;
	b=Tx4SUasKQpiuKfd2Ys6DLl86KrOFXHTqO+aWX/5A7+gA8jWiR6OixzxQhS4uCcKaD
	 c97BOr2kKba1mRcYtcrgdxMR0jF1sYhaqNPi+qAayv30J0U0wvHTCElCHeLBx4Gq9R
	 jKCi1AayMTK+eMperqzLodSS9p8TyaWPhmWRRM81S/l5JAB8VXGpLsgmmZRht3VRy5
	 4HBWYXszxh1kdMV838TUlhX8jqZQrJJIj3TRt8Gm+0Kv6BU63X1hJF9FjcnFMjna/q
	 uWOO1NpKD8+jtuTeB+4A4Tfkj2OFZQpAuneaas9bSzXIzChK6tZEeFYvU3dqVeQ7xG
	 fU4l+mcP9f0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CA9C6FA8E
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 05:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167730330573.26376.2771601437945553295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e942f77eee664c346433917274fe554a0f6034165ee186705c6cf9a5c15e8ed1
Date: Sat, 25 Feb 2023 05:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677303305
