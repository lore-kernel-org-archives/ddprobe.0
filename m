Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C449B28E7
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D44AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671094287;
	bh=8l1L1vqVF7our0+yvUqAm/s4dE04KTHsgAUEy/nvm0Q=;
	h=To:Subject:From:Date:From;
	b=Lta+TUegn+8V8a7q4ueR/3vPouj5PE4z2z+bZPbZv1eeW+Jto7VbCwHttvOYnGtp7
	 FwOuNEhYHqVQYE71P+XUdbOYUliSwMdkpDscQlpf1sGlbcpJZ+J0u1SM2+LZMWuZyd
	 cjlC7mzk5O0qJ12SRsgHO5peXHd8tmrloWnG3RoCak7pnus5Z5p25qIg+bft7B2N3H
	 yLtXhT27gEQeY1YGEFbIFjNAA+PjNbZwbtTukuzN9GAPWc/hjPxxjUuMJgXTmlDbIf
	 ZmsCKpiABeUNsvKpoQ4qqJ9KX4yk6FVfiOQvHiU2TcForEahg5tSwZWR+c+wOsNQ0U
	 HOrkRYcyblExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A0BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109428739.1426.3995624035365089415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e009b3422146ec9127941d15d75857ba16a35eabec1623c4accf789f1ed909
Date: Thu, 15 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671094287
