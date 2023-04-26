Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310C3C2F2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD9DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682503025;
	bh=W4zp160sH7tbO67oLxyyi02Ev2tXl+ZsuRMkoyn3h7k=;
	h=To:Subject:From:Date:From;
	b=KpR7oJj8PqRBkADa7iNsxGGSINEnMVLvf+DE8UGQQyMgfGWpHTc1YG+nf/IhCUSvQ
	 q+EdknMIZq5N+TDyMhyuwiPROtZvSV32JQIbIGwrHLLZsIYnmbJXATb7Xl0TInztqN
	 kzZqSUf3RwchF238MOcdLVR02IKGiSGQhRrH9QHiR4k5s3b/RP3S3D5C2lUG66qudm
	 PxUGL2tqY94aazs36RwHSAI7f0LADq6aCTUpmASt4qZrWpySoX7LWDgBBVszk64Yyu
	 0qopLX1RW8xgCXdp7kSrAhESiQBmvhLctTWla+sjXWi582GEvxDO4ysqKrK8jO1bXy
	 k9GFDrsCZv4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9520C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168250302575.28723.1335618706422379266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055113809be921a2292885a92ad489a89d881452b56df0427296672cd6559643
Date: Wed, 26 Apr 2023 09:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682503025
