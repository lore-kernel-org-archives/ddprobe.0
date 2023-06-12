Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA96BC8D8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 08:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB80CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 08:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686557585;
	bh=BMXtnm0E4mb6rtXSXP/5IAa7J4To4MCFxb7zWe3WKyw=;
	h=To:Subject:From:Date:From;
	b=qvzpc8fuLZ7RXuSCGWZw6fOb26j9HFTu/KzR7t/rzS7AN1QfSQ2RQocGvfQHEfSpA
	 R2Bi4iu8er/D5IwJF00ztufRN6hwIky0iAB/UecOKt/1nSGc5g08LgfXXR9VipgLYa
	 MyW8xn29ADqoxH7PgsaNh1XaRgw2Y4JerHWTI7f/+G7LT4BiAKr6iV8G/VJZ9lWUjb
	 W2F/iZ9TqFwYh/gmTCYxjSrdVWs0JpZaTaUhCS8nbxnbt/YlTYip7mZzxt3qqmPKfq
	 7Y1giZ2lvqnczMuOFdoeZMhj3nEgebm5htwZf5kexO6G+RPdaza8OcHKt6Sd9WRG6G
	 ZxTMhsar1vvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC880C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 08:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168655758575.25293.11050437209892629418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931033ea63c3f741dcf3d118d6cf351d1aaec4a6f0f9d78092e3fd137131f9db
Date: Mon, 12 Jun 2023 08:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686557585
