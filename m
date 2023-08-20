Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638C510F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA65C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692522848;
	bh=IN9Fq5ja8Vp4ONi3+sxZ+okA6PhqVZ7GT3HMZFVZQbA=;
	h=To:Subject:From:Date:From;
	b=RCyjo9qLf5bH+S4fv9QxStOTQZYh1GuXD/NDplUfoR7r/0aTWjbr1mcIrF5iTWiFg
	 XHY7eGJ+qrNDhHRNdxIPsi0i5qei7AVM57Jy36gUkAsPAg9w6eHT3BG/zRoaQcq7Yc
	 IFJHWn9FU7fDSsC+Xu3NNb0pLhxDpFTfbBGeK43mL9A36Jfff+Ac4MOAZDyzkYEc1q
	 YsjCzc5mesnfaixDJgEujIY0yKp9Ar71MbC71sdLxejEcukH8cfJ8g3peFSubevyOD
	 koSYB5+q7BUP7E7nHGqnaj4Ri3+hTFLAosYg8FAU4RdwZDAa5UGxDiuuFS5y+W6/45
	 Ja7tbJOQ/T1pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ED1EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169252284871.15280.4353600321984028587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc32bfd8b1bb36c68bef1b54edbc4749896ca6b0eef07335deb35ac17b8752b3
Date: Sun, 20 Aug 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692522848
