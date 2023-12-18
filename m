Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2403E63AA
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2/Qerhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B42CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702878496;
	bh=VKSOXNm2KQv9QNzaNd/gxh1pDiBKaa5IWtdXXa1kryA=;
	h=To:Subject:From:Date:From;
	b=f2/QerhePQylx7TZgytlepjlVmFw3w9/hWRT9y1Us3UNETxThmjZxhl/j9DXxIPmD
	 ZPt9y68jh5WZOVQxVzPT2ZHzt8ZJMaV2unSZ0QT+0hkLWL9+27np8y/Pkr6j9WDgPS
	 Ljn1MFuDlWSaPpqTjlI+16Nlvrc3a37m9lNf9iA6vLVRwxqM9CfXpnA3yNjbaBKpez
	 d8IA2N4vMDqy41lroTvcOyXIa4XcquallFqEhZnuaHZ3LNivHhfdZhSL9VQ4eJVlsz
	 WU5l9gd9iZmzMsSa+H5jLYZKOlcxDHIJpcOwfy+TTD3G7iA7A9Al9w1rGg2V0UkppG
	 /PueQEuhZC9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F89AC46CA2
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170287849643.12610.8703927534132827931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dd361a0456f5a54fc3734a80aeed8698ccda3fc1f02861f356a6d6f5cdf765
Date: Mon, 18 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702878496
