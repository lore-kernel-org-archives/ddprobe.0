Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117E44C67
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHusb78m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 885D1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703494096;
	bh=mTU+U6ytRIrTUiufhDbxZqkHITtMRndA96aXaLp+Xgk=;
	h=To:Subject:From:Date:From;
	b=pHusb78mj3sP+o0t0eg4gQ/bxvx2wbLVeGIaLLPoCdieyk4knjICM5UCnk75i9R+o
	 W8JTmUond02I035fMAOeV86tFeoH97TMDrKrs/WseytkEkYZ+/AF2oxnQC0c5DC4SC
	 r4f3PPXnQCjsccOaWtTd/U9aJnHOBzqHKx1mjwjLslKfKcLBrljd46CVN3b0yEAFTv
	 P7uF6b0G6uU7Vn5KGdb0hg7Qc4AROggsM2xDimMibY2dH8DNvaijZ+UKC3gL63IQwT
	 j2rQfhVMpHXRvDN12zBquzvsjJVo10k+kcvjGdSEKR5SXWpn3/0BWb/cUBjURE7rGf
	 0WcNvQb0OUwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C14BC4706F
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170349409643.12092.14062442445434799563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4decb3e4c9f1889ff203dc85ce56b45e6f70a0438185020ecec112afc86afd79
Date: Mon, 25 Dec 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703494096
