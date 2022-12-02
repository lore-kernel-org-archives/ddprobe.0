Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E82257A
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70431C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669987854;
	bh=oPvJSVvo/Y/HR+ATJow9J4PcRQuWvOnI4Z/qUxiivbE=;
	h=To:Subject:From:Date:From;
	b=DNq5jJuLZntgt0MjwM1t3WE/P8yrJy0TQaxCd35nz+O7SP/8TdW1GwodyhWrHRTTv
	 htyvB4MbCGbuCGY+sJm/xUJ74HKlZi0JrumLleF/KfY05R3/FO5jAOSjKrWSv2ykGd
	 Z7/l9PaZOof9wrtmR8k5hmNu0TlNPWnIb2gDfB7+A9RWjG4NjXED770BUqzlXNyOJu
	 /V4Z3zwHhCukN1plYvFdJcMIXk3AROo1ZfFsMe6OV2Czu81iD8gB5M+l1nOWh5qlD4
	 905PGSLJtLwyfA9Z1FuitEiYr9a+1z1K8UU8FsDXJYWy9goENiuJIXbFaCbivzh3Qq
	 HumlpJekunXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57491C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998785434.27649.11646659529653914121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1089a95b9993adef63f7bb010172898f99bdaa51e22bd84feb99f4ef5f103db
Date: Fri, 02 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669987854
