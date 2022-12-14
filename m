Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD3AD25
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B94C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671041487;
	bh=6b4nFIKII7gJtnDTmtArC1OeItbXq+2hXBxpon7OE+E=;
	h=To:Subject:From:Date:From;
	b=d0Z1zsg8N3mzXbd9A2U2LBdioaoFmGcxuOeJ054nhGSNQhgJrTBsHgxN9UxqzBQSK
	 eSSmY0iZzb1RIfXFFNHJ0vpaZM9cZfUas6wrTV7+BTCFUHIVsc3lj30tC9EFu/xqTM
	 RTse1ay/LG6pAnUKyJ78woS2ZwYNWWC0PxqvV/zmXX10oiTRm0JF7mNkYp748urteY
	 lMkFUKnhkNEU8JRoz2nX54/uSLrsLYY7Zi4zLmIuRgzON/MZgVHx78tSeG/tQzGoYQ
	 YVEFZb+9oHyVQ7ty5j+df6lg0S6KtGz1DId5J6kYEnGjcAlNKoKH++YVSrZsZw6gBg
	 J6brNsMTN51/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F47DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104148738.7071.2925527849696551871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619661d1f10121c5b175bc52921553ca7dead6f4f5439504c6dac420dc5bf906
Date: Wed, 14 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671041487
