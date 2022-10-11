Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC86833DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA65C433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665493253;
	bh=AFSsC+b5jZUEta0Krwm0i2ClXtIvryFmYEe0it03ir4=;
	h=To:Subject:From:Date:From;
	b=Os0xGy7ypMfObSLWmnTa5ny6e1QBOBRBPQ+PKYhYwvRXxVHfWXP2LUkLg9fhfxtey
	 utjSBmivf3iZJ4Z05Qb1N1Jib8bmthdywBVH2ZE4bCCIKZSaWGYcCu4XtsDX9YuTes
	 iYlcu+KCw9n8IAqo5VxC/Btl6JkS/UvILZanrZWazAvZ21nBXNh6kFKx8vOF9tq87U
	 T1TkgcHnENVKKCG1p9x4qqUd26TteaASMn7xM7dprjxYQVWvXQwaEFifiKVyqNCtGD
	 BRzVVt6Pl01Ud/h08pQJ3P2KsZXHkd8jIGoksYfjCf/dnaZVOSUIpKyBO+vsyccGq9
	 nGSVVnwV6aAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533C1C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549325333.32763.5139013321310096150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00ce27b3639caa928e00a4ded9d60932b8c7bf0b555959a59ccff892569f137
Date: Tue, 11 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665493253
