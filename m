Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F1ECA
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7657DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669098654;
	bh=A6zxnc/cJfrApPClRpdPKUppDA/n2R6wlX2S5N1pPhU=;
	h=To:Subject:From:Date:From;
	b=SfaHeab/PTgGLFOfRDFEaf9jFqSgZk8yXTWy8QxzcauNpmc4tJ10VROXAicyVer0F
	 ++DYhUEO1ilF+PoSqIHLJO6sBH8pm9Z3hkoDmQBWi9UQumw8kvD0IvgGBJgRxqSIUw
	 Xzj56BsGnakXx2xmpXcEnvDUlcCON38j8Y943d8gDVewclsXAXZ5VwIXRZyZvjzrDZ
	 vEf3mx62YJKm1poYajFRybbyvY2IR/DcoQ/2Lxr6R34vOutr98BnrK4DImviN8wnCG
	 vvwiIfiuvEozm1hRraIO8UjYEjN/8cSwwEZlQ5oIFeu6UC+/FHrr4aAmTbMEY45VvO
	 MQHjH2Jiu6Lzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B668C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909865436.13505.11061258612934257262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a310bb973c3dc61d7075cd91b1f3bdf92af0c621483ce17200fc1d1c15cdd4
Date: Tue, 22 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669098654
