Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A916FBF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8DFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675433765;
	bh=ouGd8BmcQoxWKRgcrFJe2w5XwB6z9AnUN7zQ9D4VFl4=;
	h=To:Subject:From:Date:From;
	b=h+91Xd8FX7yo+Y9X6CJ5kwmgcrsarr2EDkyDtdNnrswDPIUwW7uYs/c6vOlv+rlb4
	 3WA8XUO5ol1EZPuof418mHIIjlvuLYQawXldXKb021PUFy4JxoDjgsyf29EYHz9hiG
	 lCX0YrE/i5dnKXm872JmaO7cTU24oqurJBbDA7ejVZlDJxq4riEsdFc+vdjbxEpYGc
	 ya+ulOfZRrpkvNNtETeb09NBukMP7B8YO1QtJl2OZHoEUunGJI4WkVf+J7JiMOAfOW
	 sjZnGYwRhP+Uv6z/n4Z0KmR/2rE5JqHo7cEDNyQdW3pZSe6vIOPQU2kQpgu34T0/3J
	 o7iqVaRksiWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84E3C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 14:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167543376574.19680.13566140199375948035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03606d554f9eea8dadd021d19624445e81a065b1a291b59fe2ce0e2be704fb42
Date: Fri, 03 Feb 2023 14:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675433765
