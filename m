Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9B9EBC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3A8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688468168;
	bh=6f61AtWJKbAfFf4IVBmkkeSrfszkKPVIsIugbOVgH1U=;
	h=To:Subject:From:Date:From;
	b=be7RkRVqi0IFS97Uq3s/5VcQhQlzIW91QDbN+62LPDgZ9K32G5touaWC8ZVmYpD5j
	 S3Y1RsVaX3iOMN4S0OOmGVjqWQFtbXpQgEh0JKwqNkbbnGQxy9y6QowGoRdrd9BDPE
	 nmytGjsoo3MjtUaytRAG7GdbFrfQgp91qO3DRsZTGreEQrMneC/vJp9dwfN9zvY0V8
	 uB0zq6HrMRdcsTlePxedFqWhw5NbVXTHODia6cMORmj1128UFmwdSl5fEH7ybe4gPt
	 04ELpQr6Rpy3C95NKrR6l3jyM3QC/xid8HJciyvxJn96BFAhLcISMjHyIYTGjhLLDn
	 6F38QSMyCPe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF30DEB64DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 10:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846816870.26370.8814691109726526295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4953cf353276fab914794a8196c3f922303991abdebc09e9c188b1f38caf8c
Date: Tue, 04 Jul 2023 10:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688468168
