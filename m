Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD2F7F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 02:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2899C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692671648;
	bh=7DIgmQnkS7sAsV7IwUqG3/BS5QjSxxErJrtOVViR49I=;
	h=To:Subject:From:Date:From;
	b=nt9FZLhznmknb2Glzeuf9Zgibr+kl6XSnJYPve0D0Pu+gKskebC9CzNoYlXVPBHR1
	 rGve1cf6XRwFN9nuxtUmY58UjdkMMlQ9+7FdXVpcgtVXxP1jReVO+38BOuPW+ceOtJ
	 sEuqLdC6ZKXhxqP1XaHDY4ZYj60l62nGVdiet6LJWzKVM1G3CEIyqd7ptboPTgUKhU
	 WhlnxfcPKG7WrT9nwMByxjPgZzU1kWX5NjUPtWYPtmMBZ+hs1Wk8F+jm4CJSc8t1DR
	 H2eSqast/ADUn7Mxvw9lgZCh/lJofWgaY7VeUvBzwx/F+UeuX2b0Ch4ZEwCN1l267E
	 nhzwZw/nABgpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5086EE49A6
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267164873.4744.14842503387902339023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce2020d5ba485a9ab8ca65b1387adb421a42a765d22eb4aad1fa4fca2bd26bc
Date: Tue, 22 Aug 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692671648
