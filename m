Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AB3EACE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPXsACrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3E2C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704961096;
	bh=ozVbr/tbZzIQH38g86rDNrROUKeeI5Bj7uaNRhTF3Jg=;
	h=To:Subject:From:Date:From;
	b=hPXsACrpW5GyaX1Rb9flaTAAtjvF/JXDeyd31v/jTDCht9Y53ijGbIBrPT7K2vNB/
	 QedjeUBih8q4K7GRr9Sf3iwh8WDYVE0llugmODu9slcOxruOLgcj9OXt+o+Lr9c1Tu
	 AQeTmiJCZ6cFgzqH8iF+/7mmkNckaiRhhn5sxUaTBKPEbbpzZIEE32s48hSue0OQuj
	 /Zmuz+4pHdp7DOf53kQELzRjBnPIs1qgG4Qfv5NcONMSWQmMspKcyBLx0rne0uUJgi
	 RxxXzHhadIi0W4LqMXtcW1FBSt7Z8K8vjjb72kbbJg3cA/xs7qKnKIulrEFB5Qy9hD
	 F8pwo7D1lk9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EF6C4725D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170496109639.14937.7375516431642700428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d3c878778a2221d0db9eae230bf56a546e6c5563ad9de8c0c5aa353434f28c
Date: Thu, 11 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704961096
