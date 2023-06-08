Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66169171C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2928C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686241385;
	bh=vEUKLQCK7e6xEWSkObVjwnTQbbUkFxCaLKtXOkpK0sg=;
	h=To:Subject:From:Date:From;
	b=RGKyxF41B3PVwX+dpIpJLsJ6T0CRV+Gp6gQkGl82vKhCcQxM6ak27+j6BFuP3lAgJ
	 jWDYoF6J5K8+9nCalq/EqdtwDbI402HWpoIS4cwLtAdKqowI+k3y/S/ju5jrPcePrm
	 dZ+uK97v5ZDtw+aVLF9UW8C4i9VBzn07dHzJXC/9rU5RxMRfQVAYYLo8KFg+D44tSg
	 DbwdZyTXcsbDQeMVRgRk4SMY5dzZzsXLdaebRZ1v+cCAiN8eLxK5Ei/HjAdHIwmxNW
	 2RueHQQWE62bgl2GGnUrQB+9Uoje6Y/vsuHFmQrnsDPg6QjFbRFAgrA/qeyM+5DNpC
	 gnun9i4eiX8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B03C7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624138574.16043.7681504704592263368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbf5bcb46cdb6155ea0e3e010bbf5bfb97cc13ff89b67a68c717f2679c67036
Date: Thu, 08 Jun 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686241385
