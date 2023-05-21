Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F853A29
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 148A4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684645206;
	bh=wHqaEIpErd5KIs+bCRUUaau9GGu/Q6MOivmdcvlGsYs=;
	h=To:Subject:From:Date:From;
	b=ihlXt6YnOFNlXsP5ksOkdBY75y4Vaq4INkWlqgWPaangrsYwu91GwSRmC184pIChU
	 Lf3QzrdgJkViEzNdhyaB3dtRDYlcmjylNEtzBlPpxdRZ+9yXJ7//nSZt1dswwbTTSO
	 VIjzJQujqp4LxxbrXBXzCCS36m5RKF3D4U4d/XDWaQTv73EZysGI8pgesQqwWxm4Uk
	 bcaJWebInf29zVWRNodFxzJGt+uCd9blOkGLTX1+qGJGBfgMwsZbUvupXPF9J7dkOM
	 8MaZfmNzi/PY3HzGf6HXBmlF2G3glqstIAR9j2+NiUmVl60eSbKFSgFJXvs6ub8uKc
	 0dSGljGgbwFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E572FC77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168464520588.3586.10144310782740754909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145614d89e69cfced7fc73d54f793912c0d9e77cb916bf4793748b40080a537f
Date: Sun, 21 May 2023 05:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684645205
