Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AA101CD
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEf9J7ML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFD5C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698877096;
	bh=C2I6ITc6qod1+Y0JKKEPCbWPfw68bJ+QYO5ISaIOViA=;
	h=To:Subject:From:Date:From;
	b=LEf9J7MLa/k2bmLc+T9ABQ8rbObWzqUJqzidZKqMmW5Lwuc6oYHQgoY8AbLKnZq3r
	 c3Y5AH9lFdBMAfX7yrSS2N4MwC5X0rhjVjuD4c9VsUTAryaU5ctwxEyYtQr7iDoew2
	 5HDkHFAB0gS2G1Q2MGnq0SVBd0vtTrj+M0YfhlFzR6ZUPzLmPQEEovAEherVYxO8tL
	 1IMaFt+mBKYYBZhcbM5RetQXShGW1vKzR6JlT3esBGFfVZbDd4ShUNXE+Yx/ZUcn60
	 CC3ogEi3Ol8GYEfh16HkAZnisr2xIgjw8CHtVPxp1i+glM0U5CR0DOpbcKTssa0Yu1
	 bimdPgBZgDeBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAF9C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169887709637.6274.13078711555743088792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9403bac35f800198495daff53e182d8ade4cbc8299c8df4c044eb217326a09d2
Date: Wed, 01 Nov 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698877096
