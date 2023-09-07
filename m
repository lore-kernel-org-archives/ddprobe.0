Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D24436F
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E006EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694061248;
	bh=fLKDk3naiIEc08zvlR1c+fLJEEzzyaKRriltVob9kGs=;
	h=To:Subject:From:Date:From;
	b=pwU3IZtSl+Lm9/PDK8g4VpnghIeCOySYuFtnCMby+7XoBzeeLj/fAh659m1yxwqG/
	 HZA0kTXioKfs4K24zN2KRqy80K4kYQRWxqnMNzhPgSgNXiBUWyLogSeuzSiMDH4SDj
	 2Yfi+3tu9yqufohaxQfMIVkSdOQaOA6ZngcLN/YTYcaCFm65bsew9aRT1AMm+iXc/L
	 JdXg6EoSLg1+E9TTJ9SKd3h/OB1BRBiqXJJCsNTqnQaK/6WQ1EMceD01eD1pz9I0+o
	 LnwR/79FVxVBXCGELt++WtYOBXjq65KTnGF10TtM6TeB9K+AqyJhRGSxRE2w40BvZV
	 gkkR3qJCIm9sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B38EE14D6
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169406124878.2898.14812484293446083729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df53091d2f4eba9523d0d18999cef3080509d49fe54102f86c18647f888b2aea
Date: Thu, 07 Sep 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694061248
