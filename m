Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644B6261C5
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0065AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685057106;
	bh=awE0ChIcwbxF+T2UqVY68nh7gFieAiE7zYHQKbD968M=;
	h=To:Subject:From:Date:From;
	b=iny+Qv08u3Q5DtOL8K7jkXqWCEWRqz0lMAPMmEjY6VXeI5bYefjDvpmz2m8Sr4VE7
	 pnOt2G6/3j+3qbYkK4qKtreqrvw+arPpwZI499HuQmgh3ZCo5mbWvtp68eheucgxYE
	 t8+tDJulgy9RLa9LibtK+AltMH2rzNsFSTK6Rcs1tz9hguq29YnLTj0YH7uiHYp58q
	 wyC61nmeh5T2T+cG8KfSTWEAWY+KPkYaM5xAfla+mlEOQMYKutNuKIrQtp1S4UQjJo
	 O7VZGGYCvSt0g9wosYHuaH7PMoaDzbYgo9FC8SAPJRqlsXWhwMlSvRQtyjmmMNbI3V
	 fPybSTSS61DBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7898C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 23:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505710586.14077.7008248205032194009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84904bc3a0262ee552055d2969c70b075225b478d46aace0467c48efe271e71d
Date: Thu, 25 May 2023 23:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685057105
