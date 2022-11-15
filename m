Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D883A1FDE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703B0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668487254;
	bh=uajFLTsFKS9356rg3EZddB+76xQPO0MY2DsuzbaxCFU=;
	h=To:Subject:From:Date:From;
	b=TEMlWUIeQjxLnrlnY3HQsReoMGiER3DmH67HjVU2Gn2EcVzB6mroRGvEAi9spNKP0
	 rgmrCkaMZXpczyD2fAY67QZvHZt08VEuHAJJ/JBxhsjuKSIljZ696hdNqMaf2e2D05
	 KEyScGRqjw+j6+HSjSEJ/Xs451RK8Eql23o5eYjHRn4r7B1kGV8/aqGYVGpyCoT+mb
	 D9KPy9dV06Vf5W3JOTnguDjOzUWpXLPQfliyp9ZCKtoXbuwlEjB9s2NwbH1fcQW/w0
	 VUU2OKLAKVTIXgCbyHi6JASqJFDNbpJbqjp45I34rmASKDgt0RrXXiHQQd4NiuCbuz
	 xI8SXMbdxdi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A28C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848725433.7508.8982973687596160274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88df680cd09d44c4ef78f945f11c74babceac9ce190ead555e3b6f886aa8051a
Date: Tue, 15 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668487254
