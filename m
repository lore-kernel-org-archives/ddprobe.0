Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4C1622
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BAA7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671241287;
	bh=UppUC+pL7CkMJtT0MG44I1KGtATHvrXgBNGONW+r/JU=;
	h=To:Subject:From:Date:From;
	b=QE90ZyUmy03e3UpHwxhP8383rjXKsEtSb5M6VQe9soSeWNIgFk2l+2uHwKf2QcYpm
	 2w+gvyBut3dKhi6LLfb+xYzK7pDbrogDjp7x1hMhytDuFfN0d//ZRnpNIjF0VDNKDw
	 3R1ZShkVm0y4YCIwSDVHKyrFJBGSK+r8W/IEGg3MNkcQHUav8fvfeMrHC30pMh4SM9
	 MYPe+jQVVPiQuSAGJem03kMpBdUP6uyUH5m41SCGPAs9snV8lpCmR0HHJkm7qosaXU
	 YrSS+wE+WdWmI+vmD7RriiJdk6DSglTlgdZIBY6fjhzULdTVfrlQGYoQD/8OGelTZl
	 lb8H5w5m+VIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2B4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124128741.31617.5795751255689701020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac30bcb7bd9721f18cde7003e638e30e90b279ecb6d68d605ed1fc7beca17a22
Date: Sat, 17 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671241287
