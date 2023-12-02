Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED3220B3E
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqK3DV3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8065BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701557296;
	bh=p01VfZ/vl3KOVLoNfjurhNE2ibrISXCYZCsxveBBSqw=;
	h=To:Subject:From:Date:From;
	b=mqK3DV3hpHVQYGQnkKFmQ+d4y3vnBke2SwXkCEiQMdw7uskyfCianbKxeRTafh1SH
	 1wNAk2JAiETWtV8MjYhsXUCaEcaHUh+pmK27w61Qv73QPJ4CpFura7x8Yam0/ni6hE
	 Kn/ouCdv0zOQO+l45VBD0IBmS9Qu63G8aeWCecXeYXWc8V5j7aZbb0adF370BQ2kQd
	 ayGr/dwwfHtXX1H7XaBsfhkql6KcqyHKfN056LlqnwHM8pExAI6cSEJHJxDu5mANCM
	 yk3pp+FfWQ0LRaY+GLfNjNvJN90aEKuADZ5/9Izj03CF36LRwW7hGmbm5AEVDanrN8
	 F9duw6qB5ir8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A63C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170155729638.1930.15684043367725512882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d74ef23fe31bb9c8b6dcffbde98bcc1791b61686c4502b65ea6c33be3a8e3e
Date: Sat, 02 Dec 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701557296
