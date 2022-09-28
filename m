Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A867E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C19C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664375453;
	bh=mDs2a7TbVKETfXsdxZrm4cq40ylaGINcl9ej1GXJnlo=;
	h=To:Subject:From:Date:From;
	b=ac8kAmTZ1UEC+QFakzvMJgFwyTuiqwrDFAREoGM36TeHWkPJ47AC7wSG6KE5RkKX+
	 vyZ+XFx4QD8mYrHwdc/0pgy2aFvC/b6loWROHPDn+DA9fRpcB89is6U1bR2dri7J/X
	 2IZt1rcgxDNqliFB+BxbXZZhWfaFmaMi2Ef2iM50NgvTPzc99ZBX72DnSzROVzCe7Z
	 nU5oQ4oCBYElP9WqgbOFAUQGLiu5KkCkbGrrofk+XgA89ikH6UpNEb6xvVL7TJ6sGp
	 qUdmUeGHZYtZm6rzoaKj5DnVp9bnSnAXi6zmVyTLvfSUAcq0QDDsxVmkFXk2u7LmKf
	 a4f2czObkz3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5269FC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437545332.6863.912172114315420086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4026894bc2ae062db8b99e1b6c8fd93aa700c2ba6afd5ab941a56b063a1003
Date: Wed, 28 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664375453
