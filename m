Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E8415A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 02:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38F5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 02:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681870445;
	bh=/z5oTtSFYJv4yKyS7GqV0z99FZPj7HO51Njo0wpSXNw=;
	h=To:Subject:From:Date:From;
	b=FTi+hPd0KLNzPspVrLugFquYf//5IafS6P9+eScT5NfZxxUOpN78sctjJ9eb/syiz
	 GWM66Rm/AFrWOlI/cUDFfIzfEkSpWvnC8iH9NCJCjnDzJK1/+2WXSiSM+tK9Iy3SAl
	 9ZDxTNBClzJBIny2bhcx2YPD61yPG1gW5WP/we/8yYA8xl/C7NBLb9d8YO0xCS2CLw
	 BH0PPz1lQb/tqytQcm7aMH1Yk6aEpEVmDuSVXVW1ZhEQDaoB+XEiFYy+LgQn1bEkiH
	 9AknuDjSy/C3obSoSwu1v+yZlxoMbtB7OChB13Aow75Gekby65M0ETtzZqAchJclVt
	 djau9Q7tZycQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36AFC77B75
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 02:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168187044579.13090.5104464516605758969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add5934bbfd908ce312d516d4de3eea71058f2b352acdf9bd58a1e0e77a7b6c7
Date: Wed, 19 Apr 2023 02:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681870445
