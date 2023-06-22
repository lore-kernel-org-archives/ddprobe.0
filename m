Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0060C1E509
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76BEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687435388;
	bh=fCeLz3sBo8J+kg1/qPdOXAS3+pXlAjuEsmAYfSVukQw=;
	h=To:Subject:From:Date:From;
	b=Vfv986pf1QVi0+SPsB/mfH8VQ0CjH57IfecD9IRsuZXpHSwQfS5AcaGaH+p8LnSYd
	 xVnH/t4OwILxOOjelMG1vbO4DafBgzBn6u3JyKzdCknVg3VvxVEwted80XUDp6kcnQ
	 aXQWT60B1AwPpfmRQZ6t/vkI5gDdEsdIHeqcoQNZPT3oxchcCt+x96OIzYl/nAxy/S
	 v3p9L0GiuANtkh6airVGBjUV6pedf3sFho4OwpbidOzxXjuL435yxZjQXbDwYRifoU
	 DwQvOf20nHBJMoTWtRM4dmsAQwYE0c/J1Kt+OE1KALi6Un3e8QcQ/jS0MgIH5P6BFv
	 B1XSncNoZQdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7482EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168743538867.4419.16586458641099047603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b39a4cb3d2463986347a08472f134fa1ba9231c89ad39dfd2017998a84cb4d
Date: Thu, 22 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687435388
