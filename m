Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057D8C8FA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689687668;
	bh=SCYfWydLRpfKG5f3qopIvnPorlk+SfBL1+vctdPZ3EI=;
	h=To:Subject:From:Date:From;
	b=Aal+rEH9YoG2b4Q29E+acTUUL4A/UUjjQyzGBZ0v1kctGKJWPfRXKTOdpYZOOHb+W
	 Kd6V0pLcASzSvUThi/RhMQUJva5m9PBbSV9saf1nKU4bHABEVKTyb3JAXjA72Z4E1T
	 0O/VJyk3GNHMJSQA7tAfsaxyJ8Uq08NOFYWKzKvuRXnMenMA+sWcAOIJWt7AjK7r62
	 RCpX3A6IGXH+a9hJigtw6IlQYt38Pj7cXN5AV4Mp1raQmG8wfXB0WZ+u5VQJBWS77F
	 XNGl74CWs77db3S79vZQZd0pCt3xSvnNSi6s6XA0mINjDMyJeHLCBVJQktf3rzYkCk
	 A8z9Qwm3acDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B314AEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168968766872.14158.679296947713726534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447617e3ac04b61ba86e55b7593c5c197016afa9466cc026bb6fd0983def7b6c
Date: Tue, 18 Jul 2023 13:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689687668
