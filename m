Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E488115AC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825CCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670898687;
	bh=vhQT3ci0uBBGps//AzcznHdA2in9ufyurDicFu42FNk=;
	h=To:Subject:From:Date:From;
	b=qkIwRYdRRDIh0zKCjc57yWEFZhqw/o7nLRQ1O2iVzWXdmUMOq8BQszWz3/lWzqmEH
	 FAjqcAbcDn01IHSvUbYjbZBnrvDs692/yRYcEn7Qc5AXtUXBMAZ48VW62DJT5sasb6
	 4lHVdlHkm5ipaRx/YcDhT1kalOqAfbFtHGuNRPoWOJWudIkhOE+d2qX+WlQXNBaz0d
	 zNec/6mrkMbOt6Fu1i6cGr+7+tC+sYQMtjg679Il13U6GRP89QPfNZXm75aIU/LyKC
	 EOzmtYLGyo8wZX6SwUjlwhOzu7t+SMP1Eeqb10t3ZcWSss86OYI5nkIrJ5blIKs0RO
	 z0P3rmm6abBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1B4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089868741.7355.9168697009104164584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca66855c8aa3aeb0cfcf4fb61bc92421aa57c11bfb08185217844e4954a33f73
Date: Tue, 13 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670898687
