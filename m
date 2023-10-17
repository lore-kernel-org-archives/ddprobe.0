Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B13B430E8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbzK+8d6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65C5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697581628;
	bh=KVph/x2kxup22VEMzt8jvzNRkPDOOO09dWcUVQbVOEI=;
	h=To:Subject:From:Date:From;
	b=mbzK+8d65/ZbNmfmgDpRO3AdcjyYHvyCSe90o0V3Vk8X2C8XjVwykl8Vvah16ppXR
	 nwiLJPBkU8EVweDJmb8hCWc3BsOeXjCQ4S08Jdvi1VTN3GxfeP/B1EXvJLua9lmVc6
	 2K8U9raShTvQ+OPhikfhtVzXpcljYvNAqRON1H+iius9LJC9M0V3RGAqAE7vZfwHtH
	 psexNyHEl5f8HO3/V/jxfHHYO4KaqGDfHgzJqje30+xok1ZKIZEUjbXH38ax9IWB1e
	 oL5/5euQK+24Ohe3tK28dRKh4qIxqLRcF7/qp+z9TYGnhOufSG7koUyWOiPDJPc9oS
	 7p4zHE7wuwIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB91CCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169758162869.16616.8153609631677466774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b7544bfa810fbc0438750cd120e17a34cd26556d5b002c2e0601fbdf174387
Date: Tue, 17 Oct 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697581628
