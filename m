Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD36945D
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 033A3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676663706;
	bh=3sDYhLXX33eKqSgzR+thLc76JO3wfvAM9oavX3u85fI=;
	h=To:Subject:From:Date:From;
	b=QfIg9xyOnuo5cpiUqBWdaj9KyHQarjbboAYd3ToN0ZaR35Zux0jGed+Wizilw6qaJ
	 QSZQQvtihqhPGUMZEzwR5hbU4Dskt+P+ZeishB3bGDxZEbMkRUdpjOLjoNDwlEGjXm
	 4luydjxfif6gr0j5s7dzkUA0OkeJtFXUeiYRTfr0uHbRrsCPnJzALmwTzAGzcJtE04
	 32dIrvaAJ2KMOhfksYljVA4fwM+pDTnXcVKfJ5x+yAA2gXIuTgqQdse4YsYoqjZgHS
	 5FB2V30p9at0+yzO6MKqZuqL2I+obsuyp8RqsFKkXeE3xLfPu56VZp3huiWOmZJKvG
	 +OrpbMhPUwa8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5944C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167666370583.16164.3577877389217734572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34fcdfe5ca23aa99e4eca82a0589eedfe4471cd41ed4da49a865cae32da4ce4
Date: Fri, 17 Feb 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676663705
