Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5B52F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1B0C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664976053;
	bh=Gz5Qubpttv+L7k8knZ9kt+hA73oUy2OS2dLYS10bJ2o=;
	h=To:Subject:From:Date:From;
	b=eKUtHvrR9klAnkeSdCZi5GvEqCMrpGfKxU2TLhvrIJ1tN4HWYFy2G9STTe+ZvGtW3
	 eQCvzCLe+gmhi7FCrJIRq5chlM3d+6Cqwc8oX8st9EypdGq/y7eQx2Dnqo84RKbi2F
	 ZxHa3mequuvqFCKV43QHTne1CF4fpxCuIfiS1HwHRBRjhgwIpHEMg8DFnQxdqCfceO
	 +QyRGQ54DjhY919Rw4HnajaBShbxaIk8GHRE/7OmADl5dQmeyJg8nPPoqD4j2KlcVc
	 Q1TlhwrASehBVjtczXd8OyyqkG2bRD3cENye4YIXzIJBxPeTQDKXR9zl4hFtDpPtqo
	 dMAlwji7QGHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53378C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497605333.16490.17413390667052642208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ce144d833487a8cd30dd55a9bf3d880fdd16523389fe3d6a6f4bbe7a3bea3a
Date: Wed, 05 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664976053
