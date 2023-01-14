Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31FF62C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88722C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673692287;
	bh=YqFscjwEgr2fOXo2D5L669Nh8dd34eawhIYpdkcPNwE=;
	h=To:Subject:From:Date:From;
	b=OUWZSIoq4ZF2BQQt+ZPkys1gWuvn06o5rYZ+yJQHAFzEyOYM8/YvJ9cimJAnpBd9K
	 /zEDWkmq5xXkPZy1OU6nmpr4uZlO/HlUwzjKa2m8ElEs5MpJ0BDHoh01x/tKhVqXLO
	 tod1oR5s9O6gSQRm+0J0fSJEpxPtSjqj/G0EYeqj6cZycpQ9nG6pu1nsv7eIgNq4Pu
	 ieRnCIL3o8GNa6vzTxcO32MPqJRMkl27KYMWPiu6fEVhnK9HTYFw6knTnENB62C1ku
	 F7IY9+/mq2QzziScRQ4b0KdMiIhrbyIxvdgN376ePS7Wkl7xyYO1dx36Bcp4aWLh61
	 Lmp/LilVyCIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639F0C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369228738.17483.10404676939129085516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783de8957c73e7223acdc6ca06edefd06571fe26494dd299c6451d5ba8a175b8
Date: Sat, 14 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673692287
