Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52774C612
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqkOhfZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88775C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700656696;
	bh=W6pz0RargR7ae6BiHhrkP/4NLFwPJ2KkfsXi41Q35pI=;
	h=To:Subject:From:Date:From;
	b=YqkOhfZqNE8ft+n8GiMVhBl3D4ye5Ulxq+rQgoC2gL1ntPoml6OY8AprfKl/kGUse
	 j+BbnPPmfxznBMIKpoVv3JdP0EdDeSSNqBCNK6Ba7MU9uL+eo9ZZwBrP16xJcVYjME
	 XC50Pb2NPqUr3Y/vFgf7iLQ7u33nRVdtdmZOF237Rm7Di7CM1Hzwp2OmMFEbOc0Ld1
	 5WjRZ1BPWTkZZz5N4WIyQpcOfMrVcIIl4yVfL6aefPwnkDLb5m2iPNVH4XNDe/faNE
	 Y6PI9I0kiIvoWDKA3zrbRmJnZRqXaRGRgTbgAGPIkwfEnr9iiE4lqsoUFhDjm8nv4r
	 kp5OfS7OWBdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA4AC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170065669638.18292.12880625110555760201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e399d1d2686565f4f05c6dbf0f0534d7da8325f1f8a8e28319547ddfcb138e67
Date: Wed, 22 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700656696
