Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60917C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ACBAC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672802487;
	bh=iHDPq00QhW/sm3VPAUuC4K5MWxszYG31aNcjD/sOFfs=;
	h=To:Subject:From:Date:From;
	b=QKRkzcrVnnchFV5XDlKNfisXeVIFF6ivMHigEax3ZYpizVys/Idrt7NJeOLlcGEqf
	 ejG64dXC5QhHSUAu/CuwbEGeTcB1jCZJF5rQftGEzWF3S7ZKLPPo3s3o4G1jfpNUvQ
	 RgG7O3LpfRgo+eldZlMU3u6p6CvGeqKLmxlD9ZMgk7+A0nL/F/DZGXJgiKOJGYd+r9
	 bUZXytOgcycaM3fC48KjPHET6h3nPMGyifnhCg0cxVmtuclFJseOopltMbq/qo3Pg1
	 3osQ1mQtUXEyC8UIqFfdznAlTiR6m5JAEXhojJk+8lalfFF3BZh+l76GwWO7IaZloe
	 qHF65JwSqCaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F70C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280248745.10969.1514707357836952459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3117945b508b85a6da1c0ff1bc73e6115783f408778f7c36dd994639053d6d
Date: Wed, 04 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672802487
