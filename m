Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C209AA20
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F121C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669085454;
	bh=dLlu9LQZ+FFFUmZgM/v6ZyzoH0WwMV4Z6OkeG/glQc8=;
	h=To:Subject:From:Date:From;
	b=dFZDNMR+m/UAAlRhf0a0/4ttkotfxD5dPHUy7FQ5kZlCLuTIpcKJnmaxnlJcxH/q5
	 7uzjdS0nZDHVeqVNzhF7vdMT/jsgPhhDwsBgUhpZFFAjuRcaxiLbMhhuXuxSfqaJvh
	 bcYGoL8PdtQMPhw8nlIB8DjEvIOB9TMvy5voH6BM6P+ekZB7wGZXmDjWFMAMfXCRSG
	 kG1X5pgtqz4xt4BI0TO3ZnTQOZHzt+EcygM+/APsyJ/TY1MQ/nRq/CZnHN0vljgbvk
	 dlNpC/8+SjNvjQBpWcJ7/GCkvZqKiziqX2xZbR58/xIpaeuFgkUsMY8TNSXMIe3HM0
	 bMNV3dt4CnT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562ECC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908545434.18593.16432230049419703285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27a902493b4c92d7bf17a02155969da510f790c56a195ae402fd6363ccd7663
Date: Tue, 22 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669085454
