Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1812D1D544
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIoWsj7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA8BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704314896;
	bh=5T5tkXxdlSF/YFysjrTKD/QJJ1zH3N1Xo+jPJSAOfuQ=;
	h=To:Subject:From:Date:From;
	b=PIoWsj7uiQXWzeu9iiGcOrw0mhIzOD+vNO0we3TBT+c22RZCvNvC8nDFJaPh6DmRz
	 01gE1IHxUbTurORlnx8GK3j8e1XM1dP9NBHw1ds4e5Sgsgl5yq8GcwsOp9R9zkIX2F
	 2qkNxuHYUidkY6GVbWpMHJ8DfrBNZSBQuDgGvVI4Fu53a88WWkOKsbWu/YNIULAnpv
	 zYaCGjKVxFqbOd4n6McPTyFKF//SAXL44fS0w7Fc/vxey7/VzuwYJLROZHQ3kQcvfB
	 21kK3Dab2ZHArCpBxMyrQJEoE/6YiRX6CMXrMuScnb2XClQ6pB9mKeuABg4u0DWzJn
	 yoftO3w5ExudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 836F7C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431489651.1512.4043834118673084710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e590d1dc8fd19642cfab6968696e593d9a4d049b2794e968de4e1a61d035d5d7
Date: Wed, 03 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704314896
