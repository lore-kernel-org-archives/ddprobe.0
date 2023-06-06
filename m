Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7953618B1B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ABAC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686037325;
	bh=WlOTEUdWFtjca/e0ChIbsOoQMtltmVtWl7JQsmH/jwk=;
	h=To:Subject:From:Date:From;
	b=lJHykFbubhkc1yK5bWjZMfCvcoITu8rJypIkL8zkf8HcXxYgf6XMTV1zWLqMqDaMZ
	 2x8ouiK+YkFIzXLx8lbpw1+C/siy34t9JI6JLkpHQiQTdaz0sNznQGriEX5bNVseba
	 OxOP+d1nQJ2eE4JznJKECFOTMcMOqw8CpzuVPLpvZRx44BZ3MDkGbezfUcgYhH7QB5
	 dV7g0naenhbv+fmM/PLSv6Qq1b/SUdKH+sZxwXL8V4UQucPAD+rE/dtC258bpgGRq+
	 TJvhaM2c5C0Urgx4gpluVCmZjbiTnoDQ/ZSN+X664n49iqLyeEhL/YnQ8k2ZoWbRO9
	 4LQvI9yU4tQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C5AC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603732573.18315.9739804133931458129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dddd06be6f9237c5ec0f8a4111bd0d39af5709aa1a9a7de3049ed0f26f32e13d
Date: Tue, 06 Jun 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686037325
