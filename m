Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6937CA925
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8932C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692054788;
	bh=6zFfnHHzdrRnyqsubuLrZ69XO34e5W/ezq/Sx9OHPTQ=;
	h=To:Subject:From:Date:From;
	b=ErgNDk8HH+f7nflo5jpWNGbxZpqU8PzV+K506lHqgy/Hh3BKwTah88jiZHgcb3sgl
	 3+7aV2UMvbacTkoZyQPvghv4cGC88z/ApV/c8l5i/Wsgj11Pu1bw/2xF7quKimdBsq
	 EIxb/8WzpkpQBXHbJRQzU4FA/0WjIX5kbCOKG6VxjkzHwKQqPqHO7xb5AShSaxlbT/
	 gaBn9Awhfks1ZvEaOKVNXZuf6U9pkSaZXEG7bl2HUpb3xIwNbaBbQgGaSuTB4LEqGf
	 2rKEHi8KuzL8VLQ2ooMiBpmjdGof92Mh60XWYGOOPDXHKYIgnDxj5MSfYec9sQ4eOz
	 pFzIueuJ3W+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BB5C001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169205478871.8325.17748270351688833490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08e43cb835e6e7e006cd07c0782158e5cc09366ec48779ec4c2c3bd8fe810de
Date: Mon, 14 Aug 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692054788
