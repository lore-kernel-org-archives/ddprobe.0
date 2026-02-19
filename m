Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE092765C4
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771479894; cv=none; b=iPJV4+hlj67KUalknHOnZCvRN1wX9HYfuFUJ9pHlQK3IRwWCeM+bzbF+kn1ppOJtbu/YzwrTunihKY1vDjhW3jn46+oWlxwui/HKw3Czw4XqyVXCnuFmWmkseU675P99iavmsTg1F6zv76OmYKsX29JYwnke4d6YxZeQNi77f2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771479894; c=relaxed/simple;
	bh=FvMigygn1yTK8ctzLUJLDrRo/sObeogNCKCtq1DcB1c=;
	h=To:Subject:From:Message-Id:Date; b=U/OMBcftbGzlJT51j/EVXFzkNIhPkoIVOw3sqXTm2LrWHpeccwqaumz72n6a3KxtEwYgzCx2xf54qLq59pUPsBbXS+tcZHnpI2nk8MAEHuno6SabgsNmHabIGzl3Kqbrm7Yp/5W6dBLPLsE9pBu171H4iJJisPTRWzls8jCgQfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqqNLu2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqqNLu2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FF2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771479893;
	bh=FvMigygn1yTK8ctzLUJLDrRo/sObeogNCKCtq1DcB1c=;
	h=To:Subject:From:Date:From;
	b=ZqqNLu2lwAQ8kwxc7cNPjDlWElDSBIZ6oNJfKE1+6sXlkNZRqW95NtEQW495pt+zF
	 zAI5F/0pJENvMEd+QEJnVw6XrCACwRAk6wazQZ5aeuRlwoX2PvYmUJD68ghjcHgUTW
	 8Te4p0SJRhCMoTQnVZtdmfE2nggBOQ879VQe0qGFU4bwTCmhQxWOb/kYwyk6Edj8WU
	 wZJmTHYJb/Cp6vg7hh2vfWFV9TsBGrF2fYDzs/5FekBzDpK7PuKEyG/i/oGuV+36nH
	 87XZiWR0Q8gz7ZutjqOtAqllGAqV43Q5TY7vYhyHffMVLNWCub9Ly4QOTHp2TJzz0I
	 6Ix5EO1EbJ+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EBBE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147989360.3739.4624100288375002782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95fc69bde4a7a0a10aad62f4ccf0e7bab601c6be218b8c2d2ec9e3ee2a33f0c
Date: Thu, 19 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771479893
