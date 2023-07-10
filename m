Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4B417F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5D1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688960228;
	bh=IXueqc0uDW/wkSNexyAt6yKtspaszINZokAEa6JgCtQ=;
	h=To:Subject:From:Date:From;
	b=dQxHPz9qk2Bq3CALYJSZE9D5LS+LYFyZrjjCelcvlEx1TIZzIYm/MaN+JtgTsBUEx
	 z3xn/hFY9BfXTgAwM9ziMaB517TLVB1qI829LzmG5UNHE7xW/mXgB7evDvwSlg1vBn
	 vKKkSVqXvdeaUrDQqDDukp6vwPTQjFnP8A2osSrCaXbeKjax4a1zXMDwQ5BPTA/AnT
	 TTXoD4P0ZsZdJPkYen5Yvu0Y8j+kOJEtQEZaB0/NtEQyLPOXbCsSVbRSgkBBrDvxj/
	 KZcuCZf8JRbDNgKxtnJGQ4fvfCJr6TgOJ1nSNhQX7VZyj66OE8y7LShVe5jX9tjbNj
	 VKPwflNzXTl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0785C0015E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896022876.29973.12298682921352225059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a177a63f6d6e1d304a33bac274637840099a9130ee39d5b9564efa36982996
Date: Mon, 10 Jul 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688960228
