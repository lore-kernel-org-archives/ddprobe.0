Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1847E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70920C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662138053;
	bh=w3CzC/MbyV219/SE5t3V2ufcNbs/WHserzaOECUvdZc=;
	h=To:Subject:From:Date:From;
	b=bBNKWi2zkhbhxmNsMZbRSbZ4lw9u+P8Y0ecQDhIdSMLCO0svViTZ9jkyuW61yoDzS
	 JCs+ZWcJFlJVW4FESoB5QB40vXRnUJkt7QyXmog7nWGK4+ttANwtMEeGNoMac7Zw8o
	 U/3TYqmGLErTE3IsoyINUEAWs2IZPl2SVvVmZq1xl19Wv75v3Ti0xBkl6kZkjEK8QA
	 c1k9wHHUbXpqL9FFoA0Lla5xINuJvYAM22VuIe5m9wkzgCuzzuCwVIYbNMMazQDUeg
	 L2J+Yo9uaPwws5hqSGwX+2qFip+W4UBMVbbOGpu4QgidqbM31jWbskcd07F7JQ1dSC
	 mqac2DGy7rwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57847ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213805334.31335.4029258663277194496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158efe11c3d427b36155c7d68f7dbca19fc0947313a623fc164a73d48244bda0
Date: Fri, 02 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662138053
