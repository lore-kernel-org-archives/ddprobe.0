Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A3010F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73096C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663658453;
	bh=MxITUaefSge5oXwn7HIvx9RV+qn9v/8aUIYug7xktZE=;
	h=To:Subject:From:Date:From;
	b=ULRYjxpf0uO6LMjpGA8GjJQX06ipLNiFaswuNZH0Pkw4Oo/4SQudfdY1xjkE4QFnk
	 r7YeFczw/XGvV30PiPvmtF7UgKsyolVtK9Z0aQpMHo4/qtgUd1C2z6v3CHJ4n68Aoh
	 72d/vQ/wwFIEjqw7GVpeRrLNJC9mds+TW2elHIovYhIhVdo1eYelq8P2kTjfGUu9nf
	 +kjlVCGlBVC5MEyhf7SFjlbblQvgITTKDBRuT9udjUJH3oTvzvw40g0UE92FzrJxih
	 9WZXXvxUymRX2SFbIu5XogmvW6XteHK0zNdBoAvctBxy8VkUTqicOnF0cIdQB4sU5n
	 1aBgfbU2cFHDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5746CC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365845334.15526.14308146221522302832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39e877c3da0867ca6f4ac6ba406bf229219ddae960f6e0f7215e896c9ee938e
Date: Tue, 20 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663658453
