Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB7F214208
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740526734; cv=none; b=RjFIEZn9Y+eLml3qwPpwZxVPqANJ8Z++1TimV2taYZBwhEXoxhd1O+/CMw/cKiEgh5xqEYNEJ82f4nybXYclNnj1YdWySUbqwpI8pYCRXkz1McJ6Ns7+gkoLpERBDL/fSHyijKwtkT5oqbkKIg44HeKzapoH/SdBIsVQwdkwUys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740526734; c=relaxed/simple;
	bh=r3OE5WiPt/R6yIdCUyfiqmhFe9DHGvNTtq+0xcGoYpI=;
	h=To:Subject:From:Message-Id:Date; b=jHQxsEkc6NgQaUWPlQwlqe6nGu0Taef8+YrAvtVGH+JKnjbMCyY878O10GMiLoNZeNH4/8ur5AAtQ0D8KusKSchpFfpIwR5Jozkh5WNtEB971rm1/mPd4sLb2kD4VCNDwyPZKJXjFWLTiewBnYi9bk99RJUV+WPjHey9nzYhXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIvFi2B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIvFi2B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFE9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740526733;
	bh=r3OE5WiPt/R6yIdCUyfiqmhFe9DHGvNTtq+0xcGoYpI=;
	h=To:Subject:From:Date:From;
	b=sIvFi2B7qMlRr/Iw9otJJhABk9wKI7u6V3QLi5zbwlT9DD6+z8pyO2gZklDgS1Qd+
	 WT5bC52VmAEKJfFG3kPN4GcHCILQVnWmGXV/QYrpEgUA5Et0H8t6ExB7Y39EyieWmM
	 wIV+ahkBlmJsJhaoXrn9ei0/smBgFEKUvGiKiKskz0EBB98uzePpeJVb9XeWR6T0vn
	 mAIFAd5bGUCBAafdrZlelUeI25tecEtzxdmUuNb3IGR9cNJ0rcbuxBcgL9IWqmH4Cd
	 A8C18vehKFYKMHy8wY33N8dkMfZntykT7dQEs32gMJmNtjnBayLgBJodfWMAMkgl0t
	 RpecL/UltdBkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0541C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174052673371.23944.12029130716005110359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0a136d76b58da3cedd7632b7178741599953bbd04ebb5bb723141452d02563
Date: Tue, 25 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740526733
