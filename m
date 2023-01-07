Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000431112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C176C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673067087;
	bh=2YoV2f8s7IvHz6ra+gJFNHgSUhKgGR5PVZpP4932OpA=;
	h=To:Subject:From:Date:From;
	b=eReOUuLI9TLMQDu2zFBCzRjxeg9hxCYr+Xf00O1TJlYJHthZIcnlJbjYw+c3vP+Vr
	 7Ckiq8EHkn/wEz1QpelwKX9le/ulY6dtnzAu/50fYrvMvEBWOXDXhb9jIBXOp5//Gr
	 u3TCOIWTlvSLWfc7dLE9OPmwwpyeb+yfel/B4kXRFNN2CgYBrMefHmmBStTFHvSEKZ
	 1A/lcvV2KvNJ9e+hCPLUCS/aeFvlM4KmHM6RLF05wmnjfWofERmOYG/5aYJs6OozXv
	 1h75xZT1Ri9u/zZldbqdtoEvrPwP3ZD+l0DuGmanVYCeqwdEDxlqIy/akBnaQ01Epd
	 M2HZP1FjriPBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D959C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306708742.28174.12177397518431033205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3b9e5e386c700fd9aff62219b8e220f84d21d4acbb1a774b02fe4f8e8a3ace
Date: Sat, 07 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673067087
