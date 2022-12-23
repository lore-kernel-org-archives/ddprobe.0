Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAC218E
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85924C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671777087;
	bh=LxqRYdCuV8KfK5zoFBVFICQsHmwHZc6njg54E5sYz1A=;
	h=To:Subject:From:Date:From;
	b=noALA+tpf8zewxOuT0sjkSjKc3HLqBadMC/sz/Th+DQt1BavS5E6RQB5Rhcw+BF4Z
	 NVd4XmeUTk4fGy/sh4MzpRUdMBCjGix89DONVK+zWD9TAY+47eeSu2fZYLSUboZiOW
	 glN4I3JN2Zu2iJvRb7JkjrchaBNdI96KaSeuKWhkDfxWVUR8RG5Ra7wFuKIH+yUDnx
	 EqvQy/SMzSL9bUN/LGfYZiZz3l7hVwwVaI6vl/xuqmll+vHnelC6SejNST3fZFp0LT
	 WivpBMomBzwA7OguRcj1sXY45bDZARVqTH/FYOQacnObu45r7dwsrE+5TTSBSDt6Ok
	 kV/7iB2jZBSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649EBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177708740.23569.2069207411362076803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d9d72100a5673a12ec69a3aded82318684434c7c91bded80c271e49b45d2e6
Date: Fri, 23 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671777087
