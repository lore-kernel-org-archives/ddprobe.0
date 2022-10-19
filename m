Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD522F33
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDB9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666212053;
	bh=l3fyDwGNR0Wp9u2zZ7yR0fGpi50C256k1m/X0mFJ65M=;
	h=To:Subject:From:Date:From;
	b=ZgZ9g8ft7tF+0rNofBYD8ABkSZ4qFfrpOkZ0b0Fsis5L+9GdVXwf9r32QGTedTmSO
	 WVigY7lFrbs+TsrcHjrZOLdqOagi+uOV0tR5reM6qzm4YFIPWRSNMcG8jV03WPbdSI
	 oCvczI2HpKB+xv2Xfje7imGBBSIIRiNDNkR84LyD2LuU2R0ViAFAXH7m60vp67fCYm
	 DFg4mm8CCI3HJseYP1BEQ2twsGTRyYgRUF+/SoAhGBQY+qpZA/0pE6vSp1VVVZJqrG
	 WlBwXz0JjMWYeH0y4B/3X2DFTjkysfBPi8pJYO02wQ73dhryuc2Q6CTWZLG3H22DU+
	 CtAYKIxFkr7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5608EC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621205334.21535.16545402798455979648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea9f6b2b63a4a5e2f115bb8e2c740e7d1841200579cca44331f6f0552c51ad6
Date: Wed, 19 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666212053
