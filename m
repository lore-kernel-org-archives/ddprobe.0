Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543538F4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B7FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678750025;
	bh=VUCDMyxA9/DDzGVQDaP10yYWoWXMKjGahP/xJUgOIe0=;
	h=To:Subject:From:Date:From;
	b=IGIPvuQOKYnVCO0+oq5syXutoq1NwoTEYisg33BE4u8qPBzu5LAyDzzmddAbyfcUw
	 tQ5Os1C+VWrJPDcBHr6wIJDyhMa8zGTkYvqsNkN58E8u35LecwpqOMqu68KCEZp9XE
	 atV4slLE8patvSWwS4GPMJf5YOXitCUkrtX98PWZEE3mg4dC1tc+2xsyiTDidkkESO
	 ayfxQn3U1jILmPb4Jy0IM9NqD6P94yuZmmBen92Mm78GVOFnJ9v58ge6IsKZFuw43G
	 8cg+sH0dpQ3NEzTfgoAFIH1ZAEy0Wlvjro+dVckFFAhcrgKKvP9E8NCRGl1zsyWrsN
	 3+wtpNOBALSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF6DC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875002577.27108.12838043841870133911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7875fe63e431a3e80dda56ee65fa464c964931291d73d5ddab69fb0752b583a
Date: Mon, 13 Mar 2023 23:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678750025
