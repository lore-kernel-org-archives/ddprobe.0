Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95CF880D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C274C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671969687;
	bh=cwDrAQk5cnXuWks/1PRWtWyGzRlMyqTSVxrehnFtvHU=;
	h=To:Subject:From:Date:From;
	b=Wye4jKJHUfCB6HqM4Wt4LWqyWiTguvhNZ9KvoZRT+zOoCoV2wxk2wEZOk2KQrWG/T
	 ChRd4G8Fv5hX3h88yHVxpUCK1nAaV70roShlEqDouKq6f5jJ2SxyuST3Y0hElmTSJB
	 WdSg+XTqqdmNs6MVTJ6pV1r1bQB2E8TWH02+IJOV1MwGasGOFMFyLgcytv3Y4y9Pqk
	 Jxf+JILDncldwj8yx4J95VS0v5LbIpE6cfKvbLdsGzpBGAO4OxOleRNETSXb458p4v
	 I9KeR46bObnQLSesC9zuC3LHUpW5Gr0Qi9s3xboP+uti9Q9SEHYqjb44llnHD3tJtI
	 iggVvyruLubWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9C8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196968738.26296.15423443491579155048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d58180f6fcca26bfb596ebfd1869b1e690a6878cab2e47f08fcc44739c4050c
Date: Sun, 25 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671969687
