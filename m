Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF7315A2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E508AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674976985;
	bh=vkxK+mAdUWzlxZMSobRRNXen5+/5M9jrAgGlTArVYqQ=;
	h=To:Subject:From:Date:From;
	b=Q/8ZCZyXSBvbIgpZRHJpAGwjOcN9wc72Z0JbBm+9kEC+I4YQT/HXq3n/ZFHzKsu3V
	 0WTIv0lw4sYR3kInpmrN5izaRgp8Og7IignFvcKzwL+woQSjNXvv2ah+mhhGL09KFV
	 j5QI8rlIoGK1VCx9ezmoqQLx49QfPTr9Vm9bXwvAmabAMMSv3hQZi8ZBK0IohYtvWt
	 If0bpQVGcdiR3U38y9GP7CaRhwj6HwJE/Xdrb7MZjhooOz2b69l3vDl3GxrqOp3ZqG
	 0bTfKnao2zXSbClY4Sg0TFlVP3+5gM2HOypYAw78eNK5jP25cJrGTUGv9LR0oQC3S/
	 PvYK8CK/SaihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EBAC61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 07:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167497698579.25946.6369524728292658340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74ef39e5c73aa4bee43b9d1b6e3e703c79343df7cc5053af1a8eeb277aefb7f
Date: Sun, 29 Jan 2023 07:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674976985
