Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47F6AAD
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 17:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0910C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 17:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675877405;
	bh=u29+yi1ixqI5cp+1O9SX73QilP47coAK8l+NsPYldZM=;
	h=To:Subject:From:Date:From;
	b=L6vDIA4zPNPmydrOPWrbHQw5Yqxs9+K1eJaBgnx9Fou53AUYuNikmBwbcgo/j2TK1
	 D9X2oEOd5wB+O864Mv1zOqohqxA2py31gJxYWaHhbT9i+Gs0h/liJCpY4FhPXmmKD+
	 oacFmYsX/pPfqql/bYPh/x1ER1bviTVda1NIX8cyT6+VUXfSYufWxqsTV23Th+47/p
	 GKVnXG+NsVZ+S01po2Sdjo9tuosHkOkLxhNPtuTP4+2IykDlLOgY+QaryDhT8wy/uJ
	 iTV83LtUlbak1TFIVMpplI1x5vKqY627KDVEdwarg91NMzuEQW0NVoTydTqZ0sDqAZ
	 +taFqx3LHJLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6447C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 17:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167587740580.32411.16172392277705205299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b96e7cdb120db2d7898ff446f46c516cdd91cd5025c06ade345f7207536b311
Date: Wed, 08 Feb 2023 17:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675877405
