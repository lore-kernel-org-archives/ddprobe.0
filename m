Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640BD10F6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76DFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685681765;
	bh=YaStXdkj1vURpODtwIX+1Kw+32xOWQQIM6YNSygm5Eg=;
	h=To:Subject:From:Date:From;
	b=Khau2VJ1tFcPC4wyayMQzdFvto6Hv7WAxUTyxpGeADhTV4GyZU3QUfTqguCcZYXux
	 BI7bRA3qf2DY+rzKzmLxyff/uh5/kjOmQwX3uQ6KgK2mQgSdpIsrhkWMB7qCNCBf47
	 qpqNTKzNdtvl858ijeecylU7Sy1qoLNlzaM+6IPEktKeuw33ubSLMYfRRnUkml2InB
	 N55oCrzriJkmPFKXBrXP2tOz+0kP+0kpeLkxNKcZZAlMU3mox0pYYkdVZibZz+qxgf
	 en3WOotRgEpqObOvnb0N0440hbtCfzuqWoxyXGcqbf9hZJdpmUfgPWocggPibpLeO2
	 cs/JauqveA+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7A3C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568176575.30007.16071577547111865789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dfbc10ae380473a89ba344522d8ebf4a0283094359f3d909d8f6c4a508be76
Date: Fri, 02 Jun 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685681765
