Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081168F47
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6A0C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672770087;
	bh=Q9/GwiHM7Gjz9IBFoPzx/KVJq0+McrqsoHgg7fFP0WU=;
	h=To:Subject:From:Date:From;
	b=BkYVlehObbBc5EKD7aO6rLnew6tWqhLKjcOA6BbHCGNlM11nKcbAWLLtD+VH8FsSe
	 vwTXfcdaA09TePI2VsQ/CQvfGNtIlBrzMIRfh7mMwhRiIDgqIvKzHGfIQNMkeeaE+f
	 UibOWsT1g1gzIIy6f0r5ResfcYzd/QgxMozMi3SH1GNpg/Rt7vNVdKAyw9mmJVoM6q
	 QuHn9lPmBOvBHxzwJPn7WhHbGiKDijyNGvMIbZpJg1Z3nq3w7bJJOK6lR06sRb0FQa
	 yro+TPU9rbt3OHjl1G+EWwlxF10pMMjLy6/bA5gcltpEj+T6b5pwCI2cPil3LH1f4s
	 MPz9UYCa17+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EDB8C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277008750.3802.4512275212814409371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491e7aa1b5cd89c93d0066ad793b858380ac32b5b9a26984ce9539c55e279111
Date: Tue, 03 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672770087
