Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A21848
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 06:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CF7C4339B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 06:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681712885;
	bh=0ILVJQAYO3LhB+psceUUFAcZ4nfwWpQgWtll44USDqA=;
	h=To:Subject:From:Date:From;
	b=YGBl9CL88nIVniDn+NPfA7qzzyofRtOKFwyGDHpJx6k9uk1Ou3trXrlNywLNFqdZ1
	 /hGcOHESgMi59VQg6Yt4tdfInQTEwpWu7xC8kVcGFCuL/2lAn1E48p8HqtLv7vd6Tt
	 oVdb1hpRWDEaCsLSKOp/128+xGJE+hzB/kTeR2HSknJaQQFVTufHGj+qCubWUyYCLF
	 a/1pU5Nk4b1gsZG/635LJgi9n/V6FJVJ8gOOtT0YlI8yxj6cW0SXZXeQZx8rzsjJku
	 KPPw6PA7jBLq2z0ly6Sa/e1SFFj/AiNtPOmql1N/oplFLt2igbuLZWqK3Bhc9oHtyG
	 wQ4C/DmL3Hrkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2BAC77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 06:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171288575.22303.15918206793299475280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af757e44b5b31d96a24d152aefeafe886d4db77448ef14ef6c4c06e51660c22
Date: Mon, 17 Apr 2023 06:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681712885
