Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C7613AD8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBAAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689022028;
	bh=4QR3kPwvbwMwX44sbstZvpoGZO1tZmxbBwXf9iz5oWw=;
	h=To:Subject:From:Date:From;
	b=r1EwRGbdjs8Y0mRj/LZLCrVXN7pzHPHcOPsxzxc5xmq7aD2LtlAAwmqZuAgGFh7x6
	 TBuQSkE5A1Cf+WMJJwW7pz573SxVO+/5NIfOLwAOmpuAl2QMdQuIEu5vz1q5VNOv71
	 LgUnE7VoirHPq0DTFZKEZwbwSWCaJG0LCrpEu0qBX/XFV89SUQsB/4UzhUn9ZJUzYZ
	 v0+Ib2TdiDsRIEuUeqby++VS7H2DbcsqP9+hbZBAc8eb0SIU6CPPwWZmQGF8qNeJq+
	 boDEf+kod2MhkZiEXDlJWfECCt9KX81B9EUWge4RUNfntZ7LZz3oJi5PtbxHgx1Rc5
	 kCHyQNqSQgeHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0040EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902202871.24691.7413971464607941210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471ea2bd0e33851b2fe67856e49c50c5c7b7b0d966449e08485ba9977b8756e3
Date: Mon, 10 Jul 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689022028
