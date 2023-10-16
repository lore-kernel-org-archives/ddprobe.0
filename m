Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541E830D0A
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF+WFZc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5058C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697477228;
	bh=qp0uWVbaQ57EVQ4jvzdPaapqyNDB0JsoPFUv6V5lPCQ=;
	h=To:Subject:From:Date:From;
	b=VF+WFZc88GrlVXQNjj9ME5CgGOwHfiXRjlGa4wh/pFkQCAbapv0WTmN4LWViiLPg2
	 AsGcLlaDRx+vFa1Wb0vZ6K8UXe299JYQJko4rDX379jqgfVbIJnPyXfcY6LefdjPTs
	 jEkCVXDzRapKTmjk06K4PZPJIYsy+VMt0qnYupizx4JNDbKytr8uSSsk4UTixoS+qf
	 3eFRGFXbFC98p4PzaL3pAf3CydsfRKLd7PX/FD4xC6bGj/uZdh2UDUqduBoUj1sMpF
	 KIazAznIoFhYP6HC9/F0pHDv1Z3iQJQb/3tFCu/CXl2TsUq2XlAqd1vmxRc0Dnf2YD
	 kMpBFF8bLB45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72E1CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 17:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747722867.12542.15222962936950763866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad86c0169909dc7559d41b5bb781fc3db004c569bb7aba027e473ec830de3446
Date: Mon, 16 Oct 2023 17:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697477228
