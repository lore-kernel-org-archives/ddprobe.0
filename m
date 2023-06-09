Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BAF408CE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0904BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686344286;
	bh=Gd0ct4EBoxs1jLuu26TZpdd3o67bG2eYRGCDThJhNdk=;
	h=To:Subject:From:Date:From;
	b=Tm8utVtpAtVWrp4jgEFZTaZi7Ga0chJ7Fwc/z2IPHKJdTIbBq/ed7RMq52n0/SMwn
	 YXnii2OdGXIGX3kxSfU4yVtsyDq4FQAF0s1KZ7q5kaBrGZqNtL2GknL6ojSQDBzq0T
	 tnn8LdgHfUCtOwpMownNO9MpL89y2YzNc81QI9eAEOMR2a79/my0Ed3iVOBiyI76JS
	 wf/bfXPFJv3/7rJdU4aIDsf6Nwtz3o30fqI8IZP6DxD9v580xjZK8rnFMlHDFjjlGu
	 dFIHzA0PZoVDf0P0KWnE0bnQZt5CmlBuc3eIKBh5whMlOemo0+JQIGqERB+A53jXKz
	 rgrhFIXEQhOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE8FAC7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168634428589.6778.12536941309728369916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6dd5919bb15307e7ff83b251186c4a80cd8d7c3a2cbd977cdd3349bdd0861f
Date: Fri, 09 Jun 2023 20:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686344285
