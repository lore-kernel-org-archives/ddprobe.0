Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D982320E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777FAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671004887;
	bh=3UTDCYMlYuKDpxhw1b0WdR1vfiGhYvBB2y5dr7OtGmc=;
	h=To:Subject:From:Date:From;
	b=krLIfKTApYKMqqpIo4JZXTBdP9RA3/OH78mEY+bDDlW+y++8mYlBkvTJHRwGuuXmG
	 h3MckwfZ5wYMzNyU+9GnD+qVJ2Megeqxhon1SktdjAZ14YRg7uaXYIy/3p9BOMhXq4
	 qJ41WQhVte8JUw0kSFSlAwN/bnWSpzubW7wwzfJPzFDSzhdPjbEts5o+s1TZG6NOo4
	 RmuOx0rs76ho7MTfKhmbkITAWRnqpG9sfHRysqnuP+ZEIgdsB+YDimmJP4400+/sZ0
	 S0vOvqJPOCGddR2d5iw3HDLKP2HTaCqPQfaN5jZr855gw0gSfWSkkxJYozDCP6OeCS
	 JxGCv5U3jkYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE9BC001B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100488738.27836.9239272802788081532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee4578f637c86057ec793cc6ef01ce42b95ec43e9e095c4bcb87982013b9113
Date: Wed, 14 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671004887
