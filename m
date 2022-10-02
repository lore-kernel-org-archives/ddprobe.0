Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E9B3D8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F941C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664752853;
	bh=eSF9lBl+tBDgdNgF/+r9ERadiAcC99Q/6Zrc9LnCK6c=;
	h=To:Subject:From:Date:From;
	b=IxvExbiFnitAKOQ9t9InOJ+Jxb814wmGla/ImMT4GuUJJ7fnuP+wQN5edcRCcNz31
	 AYd9L/VjkcKNNT4mzioCsM8Im7S2F/UMyQ0yqJfiV3xFAqb3u0iKWuSYfi4P1ooiHR
	 57VpaWLnvsyvyM2HZry9WB//RqOhutVYus5qi5F/buFn7aLP/fRnKMv+kmj2MtJ1Rt
	 Y6oC84PdMnqLQ1eNN4itfrHLUiSCJS/X4i2PnMQpRF8ajvfHAGG4EWh+0abVw6PYuB
	 3+suCQWGu4YBSef3hlLw96r5Cq5M/8LND2Wjr7RDMDjmkUjfy3hWf4Juow9U3i5r/F
	 6NKFDh9Cikn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57088C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475285332.31231.2692423369541162199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1092859971e36c371accb35de0c19fbdf1ab7197a733bb0f651a0ee32609f981
Date: Sun, 02 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664752853
