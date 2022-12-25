Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D20366
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EECEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671950487;
	bh=DwMW7CZQfdMk8RcO3kVOzwQKXMLkXa0a9TYYayzNFjg=;
	h=To:Subject:From:Date:From;
	b=n2C0WU7OYAo15hDKVHEnGSXvf5OZgOIzwGiikWCZ6o1cZgzYjBYRGlBP3DyexI18E
	 xPvGvDGk4sWwDDaHJdkrW2eidERA31oHGPB1TWLCM0Xypr0DPqh2UJrORFOGJIG+i7
	 J/OimjpbJYGiaiwRdPRUsNwFTsgLJarWjqAWz3CxGBotE+QjPZy07g54lxGLdR7oC3
	 5sH2t6/4Z4pecB5Mb81nvwZgFw47w1R/DYNw/GuD52pu8HqkwoW8j8TtEwgX0KnHf0
	 GfpBY6+dLsi+J9Ort26tGTxYzyX4mZ3W2jfbvz65eFPJCti3oHKpVRNu5YBEgnQLNX
	 AEnsYl6YI07Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651BDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195048738.13953.8933032241862261931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79453a03d39fbdcf1f439912bc4560c97c78f8c089d7b7c77efe7c543c1df6cf
Date: Sun, 25 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671950487
