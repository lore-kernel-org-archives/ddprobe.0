Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A0615A4
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723D2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662496253;
	bh=yeOKxUVKC2B8oMR5ctktDLH51gnreEQjuzhVaZNjOtQ=;
	h=To:Subject:From:Date:From;
	b=q1dCIxO2nUOZjIf3TPuEj1q2Z/R1Z91QUK9EK9tib/cbWz0zGUtsfv+IermJVTwcz
	 GO2odfU/IP5y9g4QP3e77Dl9wtXd3jxCGJWOw925oN8oD0Kih36xyJZa6/Hbt7xyGD
	 tf8u/gatVyJzrliQURYWkvnILr2ZRTDHHC3vdWt9dq3BjwbhdfJQpzY7L1XCKPVEIa
	 3RChIplAIbj75UDyH9ZaUydnfQytKbA8kdl1qFT8nYpgGQsTATGZwrGdhuNVF8YBYw
	 R5PbpIcOGp0af8mU47b2ljmOGPMuqiB9GsNA6t6uNxs0ykjIOYZklEpV+fL9f4end0
	 5hWryju+pDdXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F429ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249625331.9081.1436067236677058165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1cebba6859aaccbc7f3aaeb823dd5373056f5296763aa2b1aa447a71d311c7
Date: Tue, 06 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662496253
