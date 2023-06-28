Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827FD1847
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC94C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687924989;
	bh=47Ug0ahemGYZ/XJwKRjGvCcfTyVMk6QEsHQhw3cLRow=;
	h=To:Subject:From:Date:From;
	b=IW0cvPcGFHjOLBqCWFA+MF6DKlu3bsJ7PfHl01CkTmrtbqzOnYVSKpTEBVJeOiHlw
	 sPORhrUNMNAbUbz6Me9m0cGHaE0oLFyPzRq7lrzprEuogUN8wl0u+qjPtpw+WDmRYB
	 TZ30ogvATCpxXL1iBjfRIy1GzD1qQVGimT0ezBrSKxWF+HhA8Do9JrinH79Zkr14f1
	 tsE81HBA0lKBYCtvTHEdY4JZjFQxMYob9HOcNungw+FvdVCUOCMvh9U3nBnCLUoV4J
	 DlQUdT7ogi62ARCBOh3Z6S+QgqC02lRj7M7HLMMdI9+s3z6HdeqgDNe91EI5FZmUx1
	 fO80PkNFRjTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E14EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792498878.29401.1255519442876188642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b427d484a3d066ff70d69c30ed4f694927a2cf29ddac7d84fab0a633f76d9012
Date: Wed, 28 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687924988
