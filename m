Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2610E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D06C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676108645;
	bh=DOBvR99eFwZ3hlSFYvAE4Pn7PE0Zgs2xKXflBwqaCSI=;
	h=To:Subject:From:Date:From;
	b=X59rGcqINnpj1CyPUVK/n7D+5Yzt7Hj61sbzceVFEwghG/YQ3yjNiVhThoKDgbs7I
	 garXjiz9rnmijK1LAMYbJ1D7F8CgFAj5ydp8D0gly3C83iKnEgHuA0I1zOYN3Oi81J
	 2nu4YYGUYDe7MsWtXbvkmIvVNhbIzL1YHtJA6IyqT+8UQ6BaEgSwIyMCd3rpOkiFu2
	 c+4/HcTbk1R5+3pT1lym+Bu3olfJJMIwL/5Q248XrHPb5ckOrZ7zKhboMKRc9p8xcy
	 SeTaQLKwi0+5Xe9nBzQIjmiLgSDHFsqNkVRmVYpsQOXuCqYG4XWSWLGDJe1VOYwX8R
	 reoxqzv7XwXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85D6C636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167610864574.17407.14825754370287796468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd6d6d07fcc2457d0bfe1ccf145798efdf067f0e7010f099faaaa07a6e83345
Date: Sat, 11 Feb 2023 09:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676108645
