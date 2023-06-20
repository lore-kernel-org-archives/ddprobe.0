Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DC2F5B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 10:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D9CC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 10:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687258328;
	bh=eu0IqP0RKhyHzZVwpuHCrN+XmBpweuw+8OLdb4nM5I4=;
	h=To:Subject:From:Date:From;
	b=rOyWu2KT/5im6du6/omsMvu5HtcYOEFOv9NGpUwsEle6Ks3j+V6aLTEu9EspitX9j
	 qCbc4W1m/FMfhLfyKCHkzxDF9CUOERCcmzwZnAKlNZmRhhwQC6hhrC8AvABjB9u2j8
	 dSM8sIKEokCWHtiXG6hTe+/j3h8aE6X1KnUEWfgpNT+7K8zf3Rz2NtpTm1iB5dWUBY
	 1yOjZDT/PSZ2Gm/YBVP/U6vQM8FpyxfBcl6wmUK/S30CtanNxjpy2pfe9cgnhLy9Kt
	 FGDqRZLy4gb7kceNKuTB94qHPxIVHSYe98FoD9sLB6Q7u9j1YJ64NMZ+BwhPxS5pcH
	 urC0ay321oC9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A5AEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 10:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725832874.4564.16428944941954968790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4635db6bc3e8045f3e2d039dcbeec5ef638b9ded5b0e641e69c22a4b90a2cc6e
Date: Tue, 20 Jun 2023 10:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687258328
