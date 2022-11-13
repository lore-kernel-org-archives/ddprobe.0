Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01D91850
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F285C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668354654;
	bh=5ZyAjAl8FaeMFcn6V+YnVY0i97SIK6bJRYsMb2f3HaY=;
	h=To:Subject:From:Date:From;
	b=IAb5WmJBAtxQ8ZHF9CRIQmqD+Kzb0wXlsYBP9yglZcxuwtC7sCuTN7OS+cSTH6ArH
	 KinXC6A7QTvvd06ZxWYt64EkAggMBl7XmoGzFyfVWugrcI9L9/hbjoHGv4c3jLwquO
	 NEgKUGevgikGmoLDd8uhATHZyxGOmwL194BfNjzxLmaf7pKHQGVjGlxkrkFl5hgHlZ
	 L+YYwce1p6gW0KXV6ZFk+ZXW0KZ6TdKH3tXuyJzJBCCxgaOAOzrB6nk/FW9KlaEkiy
	 lAFPZkYEPwX0jj79DR9Juj9RxlVfdPmvdmZdKlZJei1kG4Jfk9r6/ZayzAJ/6Xu9Bq
	 Bz85MRP33UP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57516C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835465434.24204.15654323413088527921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7f0cfac4589d7c27e0bdee4f74aebe89daf32f0cbeb66da28e70c56c658a8
Date: Sun, 13 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668354654
