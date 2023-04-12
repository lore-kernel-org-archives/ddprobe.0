Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C72A33CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EBDFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681294926;
	bh=FmqVc97wpyAtm7K3RvpfAjeCh8DTHgQ67QNK3Mr7Pe8=;
	h=To:Subject:From:Date:From;
	b=M+DHJLu9pUWIwApfrEc2Afstc2SyeSyCqF/XKnhd/CWt7STNGo4K6gJgW0TKr/oKO
	 0XwOBMGNtac6BL0N/IqvqW1CDTd5ViTF9/184We0TKCxv6nD1G55qf3hDpveXN1M1O
	 vm7XYkp/nDWBhwSWEFCLDXDpGrQECPH34Ir/WZRrsr3i3zG6fH5G8SX3r3+DrukSy3
	 DOw7OWFnwnXb+lm9YJyQ8zokC7+2F89+9JMWnMpLLzKQjcnZ92XBo5rZDP45t5y7s2
	 aflCD7OHFMFOcE0GaWrzfIcLDD5cikqINGI0ck1YlCH1xCmup03dFk6qfhdO+v7q67
	 OBA8gfcn1rgaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 000A0C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168129492598.28702.16407753347887980777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579387983265288401cef8ccb889481318f718f28b6b5aa185fb7f941b822c1b
Date: Wed, 12 Apr 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681294925
