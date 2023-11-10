Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1026B39876
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvKy/ubi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BC8C116B6
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699639696;
	bh=+SH+rVjia2hjcJeTvZCsMRcXF8P9EINlo5riS54ntdo=;
	h=To:Subject:From:Date:From;
	b=dvKy/ubirKeBdrnsKa8KBkfY6Oared00CMYaB1jAuPLzWI6wXc7ZvKb+TtSmbBTye
	 I0S+V+4zWM+M1jshlGSRMRRLL34npl7tMiauVZdp+ToXoS/AbHJmydEMzMTMPuamOw
	 9avRtSMmMx7Obi/scOQkTfeJYSyU98ugXoEnIA0PjnQjlcfd4exuKMvXVf/IelBGd2
	 Q3LOQyXnSzIAj/IwIQvHseehGLJyYdcAK2uZ/7EccDgy/QJvsc9zWEGOtNWIgxr6sU
	 /Zr+KO6PDGQj/Ey834XPYKkYf1MmbNKXTj0VQFSF+Njl8KC2KSrWzYJ6e4rZuddsq3
	 6B+RwkLRw5x2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66063C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963969640.23477.16722120485763306442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59844d86d09257a5881395be79e461a46d87e0b3f166519be949e547fd4c0d8
Date: Fri, 10 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699639696
