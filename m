Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C997DA473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E9CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668801054;
	bh=pJEsSPaWs7GKp2SCPKYm8BNpUJ1zuIfw8s/5GpnMt18=;
	h=To:Subject:From:Date:From;
	b=jSlSZm0FpvGrqXF8WID99GySPURliUQUu+QTd71K9JQwPtjnohawaSgQrOoDIJEtt
	 a5iU5j8wmmf2D0tc+cLliw8C/DIsp8lEV6+gdgi4s0CorUaq2B/UkLGCtw0Ct5suEi
	 5W+lwiaSRgWtkBZHTD4M1BNAlTNzBuAHbfEJI5pUuyXRmAz/5U7yBysyeIvtoMtEG2
	 /1RLC/wm67+tB1mQQQ7CokzSqlCgbbMO7r96Z1kHFPSdOdarYsLDsi9a4slbuVsZGA
	 GQAz3JtrFq1oS9tdlnhwt0H3ePqQz3+gW4iwxLqXIWgyQCkpiuNKXXu5GkxZX3M011
	 76VcGtpOob9Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CD5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880105434.32428.15657564454806254626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f98eb6be3436e13c5ec584313d963d87fdf524905e92376d643287b9cb73b54
Date: Fri, 18 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668801054
