Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4BF191
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E293C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672540887;
	bh=H9Wzb/k2soLs6JUui50MeLRixNdq5syHlE5JRF5tlGo=;
	h=To:Subject:From:Date:From;
	b=HdrDQNmVslLOSt2sdjls4plKsMnp1OStEvw0N9f1GTX4va00KmqqX5morqWn4Pt11
	 X0RaMbWU5gdSsJXGtMpL5V4B27WuCVi2OcNIobBwWq2RZ9SbsYQb30ioxrNY2l4Vxn
	 +Flqdr6rLC56zft2MiwuRgU6DZLkXRVlK7rC05QWC56fJ/FvayqBzldvIMgHPWktD0
	 Pw9/qAfoxRSmHfZORv3/REs1aAc/ssnrzUuw46xk/NDiPssJYMC3tr0P7Hkjegu1Ja
	 EV3e65bcwxrxDK9n0Xan0wIIgspsoAqY42OCMzrgO6ePPoNN70dmhPM/0NsenTK7fT
	 BllTASXmG4+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63855C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254088738.24164.1390169170348593886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e28a2a0c63c90d4f72d35784a6f501da146dc64a3c6b339422597182bf88073
Date: Sun, 01 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672540887
