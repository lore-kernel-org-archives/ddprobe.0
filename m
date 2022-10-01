Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91F8185F
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EE5C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664627453;
	bh=XvPm93dZfprld7PeJWz5nKZTeGmboIFrP/tfuxC74gQ=;
	h=To:Subject:From:Date:From;
	b=h0JHOPMZHmsu+rJyFWeYGld3GTSGrXqrv3asOy+ZbQKPZawKMtBY9HcFvCnEIEw3s
	 7Tnc58sxqgLbUZ1zalegIK/PbmUcKu7BemvGu1JoPO3HAF74xdHy3wB8FUsups2z3P
	 3nFowU4RA2zVIWSX2AM3SY2w4ah6SWJotrT+KSNCFJa2URQR8n+CJ1BXYC7rGrPLui
	 SM85dkblqAdB3jbhRcApl1v3l7R1plK+n/Ui0dbUd6D6Sm+GZumLU1Wtet5jloeqRx
	 l1e+8Jwlde/4S7mMNhU0OtI7gBshNCapk47ZjZHZOUd4939iHdi9kz/S8eRYNrUsbi
	 OU316eEPpMIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567AAC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462745333.11197.4909778527064983999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fb7cdd56a15bb41b970423c16f92bdeb7c69ba32c0e3191e7800ca8877fb1b
Date: Sat, 01 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664627453
