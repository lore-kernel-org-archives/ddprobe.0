Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DD423A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91A07C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671624687;
	bh=3pXmKI3gS8rL9cBhJJ2bbIdSOG15V3UqXtkS/4NbJIw=;
	h=To:Subject:From:Date:From;
	b=Q70Fq7ghs3rttw62XTKAg9pZ2Z4F0ff1J49Aily27LY1S9IISUdT3qnwREvny12di
	 vST9bpcbFopORDjjkiiVyKPOR/iHbQZtOLgw4VY+9Xrq5PqKpkecOVAeVy//4n38Ap
	 KjYYpqWRLkPX7JGEWXgLz0552gPSTc3HkuyTa46pGpOzE1FAKZzydNPNQJzXWtSrdv
	 VZGK+9gqvwoY8YdR55+ULwPPCUIPnoed/py3FJqoE/Am+cl+E2Yh7m8GgAHeWvRQD9
	 40qr7AGlUzh629ZjVvxaCXNA9K0lyq54yld2nE87mDVr9bujoAu22t7gM6fncafGbL
	 Iqx3+KkjXzcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A11DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162468748.1019.2919434313513053317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33143d583ce1d1e8f22e53681044a66fac96205c1148bce8558b9273dd477814
Date: Wed, 21 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671624687
