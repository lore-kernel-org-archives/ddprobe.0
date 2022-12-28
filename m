Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29A8A23
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8163AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672203087;
	bh=kEmja/zWim4KUx3kN0mbL1W02AIgd5pY+7xgWXRr1GU=;
	h=To:Subject:From:Date:From;
	b=D7MYCH7obJCrKvhn+s7buyngr7UsZGWhbbWwcLPW4/jNHhGi9HxmOrfIkoGpjxPPI
	 t6YDlojKPQuQxdQBdesS8G41Wl93DE+4Cbg0UA3IvfrP80X0ZvuIyUAqx1FaPzbhyK
	 YDRc6peBEmM5F7Y2saJpuuRdbecumoXW/ZR9qB6MuoCxrglbV/CyaLk7n4PhYdlL8j
	 d8edsPTSO2zF7CcUdijrGhpEQQ4HMKs1doEarZ4oJvIC2GCC1N8T7isJXPAVHAuyX1
	 EoJmdKW/rQK5ux6ut3d9oNZ50PQmgJOt+YoXLb/Ik+vDYRhIP/3HjTgSz4X5OH8Tuf
	 BQreBLnU/iU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69993C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220308739.30080.11254744569684636947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad66b684154b2e23036d638ddf97c5dc9906cf5f30ca71bba673fe58e9349ef
Date: Wed, 28 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672203087
