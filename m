Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFE86116
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB76C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675718165;
	bh=oWLufY3fUYbYMLiUKec7xWa5iWpYTJDap0YhvvqXImg=;
	h=To:Subject:From:Date:From;
	b=KlKAoF/hdowcMmskgRrpDg1UrwlSieTloOIVJrufRL76vUIN/c+0Y3OKUxk+YIC6m
	 uSY9NmuRHD9Gk5rQJOeDZONFHY+HX+LUf31O2VGe9DHPXBjoVpZX/ZRc2AMNjdl1IP
	 nA8tj3OwcYQUbuoc2KHqwPyxCyq/PoPvhtztvkeYHkP2IsbE9kZuFVri0WdHcy0L+n
	 YNeOnn73I1pLC7w9d1akQDnKbcCFEpf0HbOyT9YJV01jHZnRvY5Ab589v3e6k+L7vr
	 Bm4tOLrw3PP7Drp4w1KFsOy/nD1hDP51BSTyX6dNegbKY4nGXVyfhdHoCKsZ+xVnA0
	 Zx6wtpzj30UQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F48C636D3
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 21:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167571816578.26964.6981284625510230460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d678ca82bac79e7ef85c84178a385dafea34a92e8a4052a719c272884c4aee64
Date: Mon, 06 Feb 2023 21:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675718165
