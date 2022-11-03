Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21BA7E2
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A391C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667451054;
	bh=qedz0qxNanq6LW8GN8VuQeRNBb/+Ul1RlaDBLi+yAi0=;
	h=To:Subject:From:Date:From;
	b=A1txngIg8KHAvaBeMKU6nz4daeQyePS3V+pPYKGs30FL6ZaOnz1OcUsmXMYI9QOIs
	 vCXceOJNVQSuTEYqjzmAJ/E0IuUeLtusnZs2KwBq0Lchbp77BXR4yXkAlgX0NqfWZb
	 6XzQ14clbkKxP/kgYMH8/zUE4wNVFvirpAS7UWSitGIJXNzMTpFJD2SxSYu9u5xDDw
	 u4zfqdp/fAwl/B3MpsSZjap442vfSGmZDjWZ7vOFP0zdmsTAof11qtKld0+N9kfNW2
	 x9fupuYb5lOO5CYJtZ0P287drdX9msA3JtJfyahopuryYe1lkDNhbZ1lk2YU5syCt1
	 HdR4nmGyoaCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59490C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745105434.18599.15518311686439773739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530879628666be294f04c4f062df2efd939734cad70da2f2633a22a82abc7337
Date: Thu, 03 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667451054
