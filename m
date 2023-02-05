Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5761E7B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 085B3C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 15:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675611366;
	bh=jJ8xFXOOGA6bizinbFx08oTFYohRDna932ALH4C8xA4=;
	h=To:Subject:From:Date:From;
	b=uhN/awnr8UnXd4oelfBthxxGPAdvaWj5LQUtLGppbLrtx9c6WzqN17rnQb/U0AeC7
	 ap+OunBxaNfO2YP2HVfWJO13r3zU+hGfi3MAunwSJDICX/yAwghY/JBKCm+PYu3eWy
	 ZTaZQgnxH7SXY31fJXABPTRwVkA+v9jjFIcnTeKfC1B7VXV9ocfM8dcK/vH/AMZ32g
	 fhfBlFaiMPLvbYq6QNwfWBz2pCme+SWwopBeN21TIkrbNzYpKTkBzO+GMVZJYqeX7/
	 0z6Dq50MfUx/+GcdZxrRyurXlQ+Yl7CtoomhJTZLVk4sibAijhd6QEMrEz5Prmjj4h
	 As05q5IlAAiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D819BC636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167561136587.11766.5696152851255446686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f09885ae72750b24fd8cd8e4feddff401b76cb1a02c329bb310b3b2f71579e
Date: Sun, 05 Feb 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675611365
