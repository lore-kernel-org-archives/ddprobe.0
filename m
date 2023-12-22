Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C800C127
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqJ3fhlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 918CBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703227696;
	bh=e9OX3lbW9s3U8Wn1wGuyYvsFiXKZpBaEuaksmYu+KE0=;
	h=To:Subject:From:Date:From;
	b=BqJ3fhlEUrwWuk+NwRyKERiOEzTV6SMZTAjkpL+2wJJ/tc9e1O/v9DpPFORLBsvqI
	 Pgeob3zEZxCRnd4xQpp0W4aNxjzT4WD57HQ3v47oGKeNwUmpwVDIrTNfkPDa7r9TQw
	 Bjvb2kfO1zGEsckqdyUr5HprFYBvEcvI16GT6lrTifGUl7+fBxD871H3maA+eJ4AWt
	 DaJsktAtnawQlYGJHaBU6XcN//7j3PTnmtbCEj1gmewbF5QsKRd9W7T7E4r6bh8BbX
	 N1IpHd5dk77HnSD6oCZMHHAPDfonnWlJuH9NLIWyJmMIDOVNWKVkM6nFWWeic+xFYM
	 llibGqnvDIQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE50C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170322769643.10983.3860327051971146838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da01b5322e770bc8e768aa6975f062953aa0003954afc69eeb14e00f93b720a
Date: Fri, 22 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703227696
