Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E09198
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86641C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672619487;
	bh=RVJSAH/h8BSTwzDcGbCwxgInak+tvARrQXlLswiWEks=;
	h=To:Subject:From:Date:From;
	b=hO6THBxB89Mx08eWfda1eR2YPboQRnrrjctL2wZKQp1FYrOHztvR6hs5XLdOuxm00
	 WUeJUi/xHl0PjwT22ezUFx3acw/lDpli6AD1DRr/FlA+kjOSXAF1DqEvusPW3iWQzB
	 Dv5YhxdWHVVXEC1MpU0gGuO31hX3d3cJL/Idg0sNYYQZ4p/X88y+w1ZmB3V7GmIbaD
	 tO3RSkrZbXriqn5X6aRdOhLoJ6cVuFI3nvtU9LscxUJRYQfT2RBxKCx4Y3zWD7iKq+
	 WUN2bflhg5ERdO2kigreCBP2pu6qL7z4O8A0ziBKNxU6Y7LK8RYT8cqU/HoGKjTAei
	 d/MDC8HmJiyAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D7DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261948740.15482.17435811808149067760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc70d523024a1b5a4801aa0f6d200166b0563ed2f31ddd5d13076eeb64cd1ef
Date: Mon, 02 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672619487
