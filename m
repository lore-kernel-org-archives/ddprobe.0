Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59464369
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02C96C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679920386;
	bh=z7orsLAM4hH+VMAQaLq2S6TUXqIq88i7oh5ArheNmiA=;
	h=To:Subject:From:Date:From;
	b=CLdYdJWYlES9/b6iFiN9/B9OAmDHEbQWkWRpKQYgD/WZxuiFAJffXWC4AQZMXau/t
	 YGNSrbVOmG2aO6WF9fMdMv8wXd+NcgCBxiJrjDfF5PuQoSPp0wLc7m3UmZJguUFwQp
	 FllC3RH+06c9dTFwZW0+HQiek12jOECdnCn2APMQ6V8pAKAMn2Z5/0p6g75ZLtji1D
	 /KOmfZspkDhtuqYoMdLoWu+8XDiNixZ1jpdcX2qhDW5wF5ODf6u6hp2O3yn+HC6o9i
	 iOAIFh1VoX9QZXE7p4UBQ+/TfpO6AeB1Vo4BFJNWUIN6JGeo8itptYOxEzxcW86dhp
	 x0yhQI0pyj4lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BC0C761AF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992038585.13027.6679374170693949065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6c7400a1a4a8365850ba9bf21fae15754c03132251d1f77efb491bfc64d8bc
Date: Mon, 27 Mar 2023 12:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679920385
