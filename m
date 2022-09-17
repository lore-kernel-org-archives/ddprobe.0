Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C170F46BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785C2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663450253;
	bh=4l/6ihd40ikWORWagrGUtwJc0yesq1Cy9KpRoFIyA1A=;
	h=To:Subject:From:Date:From;
	b=rsjp3QE0H8/f+gcxFETRKsswXscU5yHjuMuDDw8dYEzWyHXHTRFV3NG+Gi1HaylXa
	 Qst248BBUTySEru8ZTr9HsO6Fi6k8d4N+4gc0StsvoW42xZFunQvQu96EpHR+eol1u
	 0jLZCAEBanPRIH0X8r+xYd8tb4Qu8iqsglWd4AHjJ7eGhbd4yYxqBKGjcrvcaS6Xff
	 fACx4N4wKSZ12gjrTxqAcy9z9TtEN9XnAVFIZOsQ3eTlgN5kAMmhLhQg64IpZL4uic
	 qtgdyIXRVpy/biZGNBQROce1ttHH8omLcsyXz0fKHevE8ORttQYJ4TxRpI3tfgCBBh
	 CZz+/4XE+kq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF59ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345025335.11977.1094263882185598826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ead68fd934db623ff9320cbb0c66e8a5b03907307d13edb0988da4caeadb80
Date: Sat, 17 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663450253
