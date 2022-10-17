Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B851A4699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74931C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666023653;
	bh=Pw1XUe0XddsepkSNtmWdXC6LhUcCk4AyaYuqS6WxxK0=;
	h=To:Subject:From:Date:From;
	b=OUGuZcX03uvBgiB4FtcNJCCX2aHlA/J8z52gkPgWbWTWPKDIg7DhNafhGyFbdLtLb
	 j5TCw5uytwrYUb2iA/RenWqYNjyJLE69PHXDDlTofCIYI9TuAC32sojQQXzyY9AW9N
	 1CIWWN0fdtE4kR/1GNtXW4k4YnMDcCD3s8pCmc3EqbnFsC0kiUdWsMxQYuf6qdBL8P
	 jGeerHqgir+rAkosuYewGjRmFQP0iPucNDhWXAhO5OnqDZ5GCjFG2Fy1x4FAX8Jdtk
	 5d5j96ljW8X0QMYoH2EAABGgtzA3pbUxN3F44pjd+Qlwk2r+Vu7lLwyfPl8f77gi58
	 9HAmaD3OsEkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57782C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602365335.11068.3257931483961099750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4512531a9fdab8627e0bea527e173ccc17c8c0ca5226a9d9fcbb6c19cadfaf7f
Date: Mon, 17 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666023653
