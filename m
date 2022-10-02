Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DBA7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759C9C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664721653;
	bh=ScuLwALyK9YA9YoORRZJ9sVH+vsOlYrKEyvMEYsuZgg=;
	h=To:Subject:From:Date:From;
	b=o0h6eBE8xiDlf83RrCjLrb/OtmL/4MsWlf8VnuUaa2bFIoW2uct41iZCozQWZjrT9
	 MseBu4CpdjmJTJjeCv2MBU9E9930bvD//fLqDyMRGZuSbDYY4BEZEXwxnG0HWDKrh4
	 05nRGak7nFZJIDLw+vMSC6pN5MN18HnlnHpZzrxcniGWItMin/mhaS7MW8Z3XTvdsZ
	 aOG4U2zUvipYQ+CoytwKpUXyTE3k2ybSzipxuWCmhutmNIlLfL3kbVAEFaee7h9TIu
	 3al0Vqod0Yy7bJn6AlO2DjjS6OYsQ/WUhDEmj6oQEnptb5O+m1cDCMi9htd7LfV0Nm
	 eEt0+l+cjjK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A901C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472165333.32404.2567834752813697430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc4c20f6ebbf9a3a6412726cc56f924c795f75acbbe0d2c5c6f536926fe47bb
Date: Sun, 02 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664721653
