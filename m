Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476D017C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 01:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694396648;
	bh=sUdJ7jGNfVMHVzRYrOzpjBOt2QBJiiKYPwqQb2NPf6w=;
	h=To:Subject:From:Date:From;
	b=PWfL4ZjDu1beVePO28Mx2BzXNqIR2XQoTuPhUt0iJlh3pkp15NHOg3cqYVjh2fsum
	 0LtySQ57T/bz1a/+0p3XuhK+bZ8nySj1OEmkwS72nGEmQhMPGX5z4yA4ZDUXL+p57/
	 IufBnU8IfPKXJbBFiQoETXKNpJ0SqWetKx2+9c4e2ikFBtAJVdzKEK0Bzfb+DDrLdZ
	 niVatQgbwtoNjnctboA0cALakrXNtS4XhMXsEIddEP/rFlwnIAjqRya9I1zcdbAYmJ
	 mrve1PXJoCrE3kXBR4dz2uCi91d3NX+EAqRz6QIG6u7K1bDKwscwXfZQlRRZQLDkxD
	 4cdt0P2aEfERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19CBEE49A4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169439664871.14954.3830714114942944243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27745441de92dccd9c0e3d67a9d0cf54d3e323f210147ab219171160a8b46997
Date: Mon, 11 Sep 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694396648
